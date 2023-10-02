from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

QTN_UUID = '7985e07b-c952-4f96-aca4-f4681a41ad9c'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_questionnaire_documents(self):
        self.client.get(
            url=f'/questionnaires/{QTN_UUID}/documents',
            headers=self.headers,
        )
