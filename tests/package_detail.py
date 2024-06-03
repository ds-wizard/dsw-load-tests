import random

from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PACKAGE_IDS = [
    'dsw:root:2.6.2',
    'dsw:root:2.6.1',
    'dsw:root:2.6.0',
    'dsw:root:2.5.0',
    'dsw:root:2.4.5',
    'dsw:root:2.4.4',
    'dsw:root:2.4.3',
    'dsw:root:2.4.2',
    'dsw:root:2.4.1',
    'dsw:root:2.4.0',
    'dsw:root:2.3.12',
    'dsw:root:2.3.2',
    'dsw:root:2.3.0',
    'dsw:root:2.2.0',
    'dsw:root:2.0.1',
    'dsw:root:2.0.0',
    'dsw:root:1.4.0',
    'dsw:root:1.0.0',
]


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def run_request(self):
        pkg_id = random.choice(PACKAGE_IDS)
        self.client.get(
            url=f'/packages/{pkg_id}',
            headers=self.headers,
        )
