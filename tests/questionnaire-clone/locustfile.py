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
        # TODO: randomize questionnaire
        self.client.post(
            url=f'/questionnaires/{QTN_UUID}/clone',
            headers=self.headers,
        )
