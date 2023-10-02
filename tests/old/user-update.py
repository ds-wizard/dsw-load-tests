import json
import random

import faker
from locust import task

from tests.authorized_base_test import AuthorizedBaseTest, USERNAME

fake = faker.Faker()

USERS_COUNT = 251
ROLES = ['admin', 'dataSteward', 'researcher']


class BasicUser(AuthorizedBaseTest):
    def on_start(self):
        super().on_start()
        self.users = self.prepare_users()

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
