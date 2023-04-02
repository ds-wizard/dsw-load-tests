import faker
import json
import random
import uuid

from locust import HttpUser, task, between

fake = faker.Faker()

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'
USERS_COUNT = 251
ROLES = ['admin', 'dataSteward', 'researcher']


class BasicUser(HttpUser):
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.token = ''
        self.headers = {}
        self.users = []

    def on_start(self):
        self.token = self.login()
        self.headers = {'Authorization': f'Bearer {self.token}'}
        self.users = self.prepare_users()

    def login(self):
        response = self.client.post(
            url='/tokens',
            json={
                'email': USERNAME,
                'password': PASSWORD,
            },
        )
        return json.loads(response.text)['token']

    def prepare_users(self):
        response = self.client.get(
            url=f'/users?page=0&size={USERS_COUNT}&sort=email,asc',
            headers=self.headers,
        )
        return [
            user for user in json.loads(response.text)['_embedded']['users']
            if user['email'] != USERNAME
        ]

    @task(3)
    def update_user_password(self):
        user = random.choice(self.users)
        self.client.put(
            url=f'/users/{user["uuid"]}/password',
            json={
                'password': fake.password(),
            },
            headers=self.headers,
        )

    @task(3)
    def update_user_affiliation(self):
        user = random.choice(self.users)
        self.client.put(
            url=f'/users/{user["uuid"]}',
            json={
                'email': user['email'],
                'firstName': user['firstName'],
                'lastName': user['lastName'],
                'affiliation': fake.company(),
                'role': user['role'],
                'active': user['active'],
            },
            headers=self.headers,
        )

    @task(3)
    def update_user_name(self):
        user = random.choice(self.users)
        first_name = fake.first_name()
        last_name = fake.last_name()
        self.client.put(
            url=f'/users/{user["uuid"]}',
            json={
                'email': user['email'],
                'firstName': first_name,
                'lastName': last_name,
                'affiliation': user['affiliation'],
                'role': user['role'],
                'active': user['active'],
            },
            headers=self.headers,
        )

    @task(3)
    def update_user_role(self):
        user = random.choice(self.users)
        self.client.put(
            url=f'/users/{user["uuid"]}',
            json={
                'email': user['email'],
                'firstName': user['firstName'],
                'lastName': user['lastName'],
                'affiliation': user['affiliation'],
                'role': random.choice(ROLES),
                'active': user['active'],
            },
            headers=self.headers,
        )

    @task(3)
    def update_user_active(self):
        user = random.choice(self.users)
        self.client.put(
            url=f'/users/{user["uuid"]}',
            json={
                'email': user['email'],
                'firstName': user['firstName'],
                'lastName': user['lastName'],
                'affiliation': user['affiliation'],
                'role': user['role'],
                'active': random.choice([True, False]),
            },
            headers=self.headers,
        )
