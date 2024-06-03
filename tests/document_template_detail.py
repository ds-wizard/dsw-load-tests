import random

from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

DOCUMENT_TEMPLATE_IDS = [
    'dsw:questionnaire-report:2.9.0',
    'dsw:questionnaire-report:2.8.0',
    'dsw:questionnaire-report:2.7.1',
    'dsw:questionnaire-report:2.7.0',
    'dsw:questionnaire-report:2.6.0',
    'dsw:questionnaire-report:2.5.0',
    'dsw:questionnaire-report:2.4.0',
    'dsw:questionnaire-report:2.3.0',
    'dsw:questionnaire-report:2.1.0',
    'dsw:questionnaire-report:2.0.0',
    'dsw:questionnaire-report:1.4.0',
    'dsw:questionnaire-report:1.3.0',
    'dsw:questionnaire-report:1.2.1',
    'dsw:questionnaire-report:1.2.0',
    'dsw:questionnaire-report:1.1.0',
    'dsw:questionnaire-report:1.0.0',
]


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def run_request(self):
        doc_tml_id = random.choice(DOCUMENT_TEMPLATE_IDS)
        self.client.get(
            url=f'/document-templates/{doc_tml_id}',
            headers=self.headers,
        )
