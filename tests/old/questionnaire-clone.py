from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

QTN_UUID = 'a1cdbff5-c60e-4779-8929-e086a2da9fba'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def update_questionnaire(self):
        self.client.post(
            url=f'/questionnaires/{QTN_UUID}/clone',
            headers=self.headers,
        )
