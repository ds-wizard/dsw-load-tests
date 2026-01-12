from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PROJECT_UUID = 'a1cdbff5-c60e-4779-8929-e086a2da9fba'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def clone_project(self):
        self.client.post(
            url=f'/projects/{PROJECT_UUID}/clone',
            headers=self.headers,
        )
