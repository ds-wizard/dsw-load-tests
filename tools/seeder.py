import click
import contextlib
import json
import minio
import os
import pathlib
import psycopg
import sys
import tempfile

DEFAULT_ENCODING = 'utf-8'
DEFAULT_DB_CONNECTION = 'postgresql://postgres:postgres@localhost:5432/dsw'
DB_CONNECTION_STRING = os.environ.get('DATABASE_CONNECTION_STRING', DEFAULT_DB_CONNECTION)

S3_URL = os.environ.get('S3_URL', 'http://localhost:9000')
S3_USERNAME = os.environ.get('S3_USERNAME', 'minio')
S3_PASSWORD = os.environ.get('S3_PASSWORD', 'minioPassword')
S3_BUCKET = os.environ.get('S3_BUCKET', 'dsw')
S3_REGION = os.environ.get('S3_REGION', 'eu-central-1')


def _get_endpoint(url: str):
    parts = url.split('://', maxsplit=1)
    return parts[0] if len(parts) == 1 else parts[1]


@contextlib.contextmanager
def temp_binary_file(data: bytes):
    file = tempfile.TemporaryFile()
    file.write(data)
    file.seek(0)
    yield file
    file.close()


def execute_sql_script(script_file: pathlib.Path):
    sql_script = script_file.read_text(encoding=DEFAULT_ENCODING)
    with psycopg.connect(DB_CONNECTION_STRING) as conn:
        with conn.cursor() as cur:
            cur.execute(sql_script)
            conn.commit()


def store_s3_file(s3_root: pathlib.Path, client: minio.Minio, s3_object_info: dict):
    source = s3_object_info['source']
    target = s3_object_info['target']
    content_type = s3_object_info.get('contentType', 'application/octet-stream')
    source_file = s3_root / source
    data = source_file.read_bytes()
    with temp_binary_file(data=data) as file:
        client.put_object(
            bucket_name=S3_BUCKET,
            object_name=target,
            data=file,
            length=len(data),
            content_type=content_type,
    )


@click.command()
@click.argument('test-dir', type=click.Path(exists=True, dir_okay=True))
def main(test_dir: str):
    seed_file = pathlib.Path(test_dir) / 'seed.json'
    if not seed_file.exists() or not seed_file.is_file():
        click.echo("Seed file is not present (no seeding)")
        sys.exit(0)

    root = seed_file.absolute().parent.parent.parent / 'seed'
    if not root.exists() or not root.is_dir():
        click.echo("Seed directory is not present")
        sys.exit(1)

    seed_data = json.loads(seed_file.read_text(encoding=DEFAULT_ENCODING))  # type: dict

    db_root = root / 'db'
    script_globs = seed_data.get('db', {}).get('scripts', [])
    for script_glob in script_globs:
        sql_scripts = sorted(db_root.glob(script_glob))
        for sql_script in sql_scripts:
            execute_sql_script(sql_script)

    s3_root = root / 's3'
    s3_objects = seed_data.get('s3', {}).get('objects', [])
    if len(s3_objects) > 0:
        client = minio.Minio(
            endpoint=_get_endpoint(S3_URL),
            access_key=S3_USERNAME,
            secret_key=S3_PASSWORD,
            secure=S3_URL.startswith('https://'),
            region=S3_REGION,
        )
        for s3_object_info in s3_objects:
            store_s3_file(
                client=client,
                s3_root=s3_root,
                s3_object_info=s3_object_info,
            )


if __name__ == '__main__':
    main()
