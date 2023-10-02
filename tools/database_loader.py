import csv
from datetime import datetime

from tools.conf import TESTS
from tools.database import create_connection, insert_endpoint
from tools.model import Endpoint


def load_test(test_name: str, users: int) -> [Endpoint]:
    with open(f'csv/{test_name}-{users}_stats.csv', encoding='utf-8') as f:
        lines = list(csv.reader(f, delimiter=','))
        endpoints = []
        for line in lines:
            if line[0] == 'Type':
                pass
            elif line[0] == '':
                pass
            else:
                endpoints.append(Endpoint(
                    test_name=test_name,
                    users=users,

                    method=line[0],
                    url=line[1],
                    requests_count=int(line[2]),
                    requests_per_second=float(line[9]),

                    avg_time=float(line[5]),
                    min_time=float(line[6]),
                    max_time=float(line[7]),

                    avg_content_size=float(line[8]),
                    created_at=datetime.utcnow()
                ))
        return endpoints


endpoints = []
for test in TESTS:
    for variant in test.variants:
        endpoints += load_test(test.name, variant.users)

db_connection = create_connection()
for endpoint in endpoints:
    insert_endpoint(db_connection, endpoint)
db_connection.commit()