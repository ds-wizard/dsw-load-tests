from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

QTN_UUID = '4d76915c-0f75-4644-a095-cef027059794'
PATH='1e85da40-bbfc-4180-903e-6c569ed2da38.73d686bd-7939-412e-8631-502ee6d9ea7b'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def get_questionnaire_settings(self):
        self.client.get(
            url=f'/questionnaires/{QTN_UUID}/comments?path={PATH}',
            headers=self.headers,
        )
