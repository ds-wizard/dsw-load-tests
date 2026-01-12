from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PROJECT_UUID = '8796f923-75f7-4ae2-b53a-cc18ee0ec31d'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_project_events(self):
        self.client.get(
            url=f'/projects/{PROJECT_UUID}/events',
            headers=self.headers,
        )

