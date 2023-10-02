import os

import psycopg2

from model import Endpoint


def create_connection():
    return psycopg2.connect(database=os.getenv("DATABASE_NAME"),
                            host=os.getenv("DATABASE_HOST"),
                            user=os.getenv("DATABASE_USER"),
                            password=os.getenv("DATABASE_PASSWORD"),
                            port=os.getenv("DATABASE_PORT"))


def read_db(connection, sql: str):
    print(f'Query DB with the following SQL: {sql}')
    with connection.cursor() as cursor:
        cursor.execute(query=sql)
        return cursor.fetchall()


def write_db(connection, sql: str):
    print(f'Execute the following SQL: {sql}')
    with connection.cursor() as cursor:
        cursor.execute(query=sql)


def find_all(connection):
    return read_db(connection, f'SELECT * FROM endpoint')


def insert_endpoint(connection, e: Endpoint):
    write_db(
        connection,
        "INSERT INTO endpoint (test_name, users, method, url, request_count, requests_per_second, avg_time, min_time, max_time, avg_content_size, created_at) " +
        f'VALUES (\'{e.test_name}\', {e.users}, \'{e.method}\', \'{e.url}\', {e.requests_count}, {e.requests_per_second}, {e.avg_time}, {e.min_time}, {e.max_time}, {e.avg_content_size}, \'{e.created_at}\')'
    )
