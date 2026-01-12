from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PROJECT_UUID = '4d76915c-0f75-4644-a095-cef027059794'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_project_settings(self):
        self.client.get(
            url=f'/projects/{PROJECT_UUID}/settings',
            headers=self.headers,
        )
