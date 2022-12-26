import json

from locust import HttpUser, task, between

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'
QTN_UUID = 'a1cdbff5-c60e-4779-8929-e086a2da9fba'


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
    def update_questionnaire(self):
        # TODO: randomize updates
        self.client.put(
            url=f'/questionnaires/{QTN_UUID}',
            json={
                'name': 'Example project',
                'description': None,
                'projectTags': ['tag1', 'tag2', 'tag3'],
                'isTemplate': False,
                'visibility': 'PrivateQuestionnaire',
                'sharing': 'RestrictedQuestionnaire',
                'templateId': None,
                'formatUuid': None,
                'permissions': [
                    {
                        'uuid': 'd92cef64-80ed-45ad-9ee3-977d8e68e385',
                        'questionnaireUuid': 'a1cdbff5-c60e-4779-8929-e086a2da9fba',
                        'member': {'uuid': 'ec6f8e90-2a91-49ec-aa3f-9eab2267fc66', 'type': 'UserMember'},
                        'perms': ['VIEW', 'COMMENT', 'EDIT', 'ADMIN'],
                    },
                ],
            },
            headers=self.headers,
        )
