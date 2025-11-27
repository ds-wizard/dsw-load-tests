from locust import task

from tests.authorized_base_test import AuthorizedBaseTest


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def run_request(self):
        self.client.get(
            url='/knowledge-model-packages',
            headers=self.headers,
        )
