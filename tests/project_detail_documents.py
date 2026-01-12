from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PROJECT_UUID = '7985e07b-c952-4f96-aca4-f4681a41ad9c'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_project_documents(self):
        self.client.get(
            url=f'/projects/{PROJECT_UUID}/documents',
            headers=self.headers,
        )
