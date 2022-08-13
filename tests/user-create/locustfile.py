import json
import faker

from locust import HttpUser, task, between

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'

fake = faker.Faker()


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
    def create_user_as_admin(self):
        first_name = fake.first_name()
        last_name = fake.last_name()
        user = {
            'email': f'{first_name}.{last_name}@{fake.domain_name()}',
            'firstName': first_name,
            'lastName': last_name,
            'affiliation': fake.company(),
            'password': fake.password(),
        }
        self.client.post(
            url='/users',
            json=user,
            headers=self.headers,
        )
