import json
import random

import faker

from locust import HttpUser, task, between

fake = faker.Faker()

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'
TAGS = [
    'fd4637a2-a117-460a-a7fa-c03760c42629',
    '19b0fe70-a884-4539-96b9-a0aaf8c9b884',
    '3c7bdc90-8ed3-4b34-90ec-7945d14cc443',
    '87bb2042-8e3c-4733-ba1e-84509d7b1cf4',
]


class BasicUser(HttpUser):
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.token = ''
        self.headers = {}

    def on_start(self):
        self.token = self.login()
        self.headers = {'Authorization': f'Bearer {self.token}'}

    def login(self):
        response = self.client.post(
            url='/tokens',
            json={
                'email': USERNAME,
                'password': PASSWORD,
            },
        )
        return json.loads(response.text)['token']

    @task(5)
    def create_custom(self):
        # List KMs
        self.client.get(
            url='/packages/suggestions?page=0&size=20',
            headers=self.headers,
        )
        # Get preview for tags
        self.client.post(
            url='/knowledge-models/preview',
            headers=self.headers,
            json={
                'events': [],
                'packageId': 'dsw:root:2.4.0',
                'tagUuids': [],
            },
        )
        # Get preview for tags
        tags_count = random.randint(0, len(TAGS))
        tags = [tag for tag in TAGS]
        random.shuffle(tags)
        tags = tags[0:tags_count]
        questionnaire = {
            'name': fake.job(),
            'packageId': 'dsw:root:2.4.0',
            'visibility': 'PrivateQuestionnaire',
            'sharing': 'RestrictedQuestionnaire',
            'questionTagUuids': tags,
            'templateId': None,
        }
        self.client.post(
            url='/questionnaires',
            json=questionnaire,
            headers=self.headers,
        )
