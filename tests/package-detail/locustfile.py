import json
import random

from locust import HttpUser, task, between

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'
PACKAGE_IDS = [
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


class BasicUser(HttpUser):
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.token = ''
        self.headers = {}

    def on_start(self):
        self.token = self.login()
        self.headers = {'Authorization': f'Bearer {self.token}'}

    def login(self):
        response = self.client.post(
            url='/tokens',
            json={
                'email': USERNAME,
                'password': PASSWORD,
            },
        )
        return json.loads(response.text)['token']

    @task(5)
    def get_package(self):
        pkg_id = random.choice(PACKAGE_IDS)
        self.client.get(
            url=f'/packages/{pkg_id}',
            headers=self.headers,
        )

    # TODO: bundle (?)
