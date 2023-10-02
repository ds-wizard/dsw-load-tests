from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

QTN_UUID = '8796f923-75f7-4ae2-b53a-cc18ee0ec31d'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_questionnaire_events(self):
        self.client.get(
            url=f'/questionnaires/{QTN_UUID}/events',
            headers=self.headers,
        )

