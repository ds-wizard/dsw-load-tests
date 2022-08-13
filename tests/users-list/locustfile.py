import faker
import json
import math
import random

from locust import HttpUser, task, between

fake = faker.Faker()

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'
USERS_COUNT = 251
SORTS = ['lastName', 'firstName', 'email', 'createdAt', 'lastVisitedAt']
DIRS = ['asc', 'desc']
FILTER_ROLES = ['admin', 'dataSteward', 'researcher']


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
    def get_users_simple(self):
        self.client.get(
            url='/users',
            headers=self.headers,
        )

    @task(3)
    def get_users_paginate(self):
        size = random.randint(1, USERS_COUNT)
        max_page = math.ceil(USERS_COUNT / size)
        page = random.randint(1, max_page) - 1
        sort = random.choice(SORTS)
        sort_dir = random.choice(DIRS)
        self.client.get(
            url=f'/users?page={page}&size={size}&sort={sort},{sort_dir}',
            headers=self.headers,
        )

    @task(3)
    def get_users_filter(self):
        sort = random.choice(SORTS)
        sort_dir = random.choice(DIRS)
        role = random.choice(FILTER_ROLES)
        self.client.get(
            url=f'/users?page=0&size=20&sort={sort},{sort_dir}&role={role}',
            headers=self.headers,
        )

    @task(3)
    def get_users_search(self):
        query = random.choice([fake.first_name(), fake.last_name(), fake.domain_name()])
        sort = random.choice(SORTS)
        sort_dir = random.choice(DIRS)
        self.client.get(
            url=f'/users?page=0&size=20&sort={sort},{sort_dir}&q={query}',
            headers=self.headers,
        )
