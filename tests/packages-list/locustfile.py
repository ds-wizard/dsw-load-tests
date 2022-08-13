import json

from locust import HttpUser, task, between

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'


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
    def get_packages_simple(self):
        self.client.get(
            url='/packages',
            headers=self.headers,
        )

    # TODO: filter/sort/paginate
