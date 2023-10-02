import random

import math
from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

USERS_COUNT = 1709
SORTS = ['lastName', 'firstName', 'email', 'createdAt', 'lastVisitedAt']
DIRS = ['asc', 'desc']
FILTER_ROLES = ['admin', 'dataSteward', 'researcher']
QUERY = ['car', 'ad']


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_users_simple(self):
        self.client.get(
            url='/users',
            headers=self.headers,
        )

    @task(3)
    def get_users_paginate(self):
        size = 20
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
        query = random.choice(QUERY)
        sort = random.choice(SORTS)
        sort_dir = random.choice(DIRS)
        self.client.get(
            url=f'/users?page=0&size=20&sort={sort},{sort_dir}&q={query}',
            headers=self.headers,
        )
