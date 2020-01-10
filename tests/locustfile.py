from locust import between, HttpLocust, TaskSequence, seq_task

from configuration import email, password, questionnaire_uuid, common_template_uuid, science_europe_template_uuid


class UserBehavior(TaskSequence):
    token = ''

    def on_start(self):
        # 1. Prepare
        url = '/tokens'
        headers = {}
        req_body = ({"email": email, "password": password})
        # 2. Run
        res = self.client.post(url, headers=headers, json=req_body)
        # 3. Set token
        res_body = res.json()
        self.token = res_body["token"]

    @seq_task(1)
    def knowledge_model_list(self):
        # 1. Prepare
        url = '/packages'
        headers = self.auth_headers()
        # 2. Run
        self.client.get(url, headers=headers)

    @seq_task(2)
    def questionnaires_list(self):
        # 1. Prepare
        url = '/questionnaires'
        headers = self.auth_headers()
        # 2. Run
        self.client.get(url, headers=headers)

    @seq_task(3)
    def templates_dmp(self):
        # 1. Prepare
        url = '/templates'
        headers = self.auth_headers()
        # 2. Run
        self.client.get(url, headers=headers)

    @seq_task(4)
    def questionnaire_dmp_export_common(self):
        # 1. Prepare
        url = f'/questionnaires/{questionnaire_uuid}/dmp?format=pdf&templateUuid={common_template_uuid}'
        headers = self.auth_headers()
        # 2. Run
        self.client.get(url, headers=headers)

    @seq_task(5)
    def questionnaire_dmp_export_science_europe(self):
        # 1. Prepare
        url = f'/questionnaires/{questionnaire_uuid}/dmp?format=pdf&templateUuid={science_europe_template_uuid}'
        headers = self.auth_headers()
        # 2. Run
        self.client.get(url, headers=headers)

    def auth_headers(self):
        return {'Authorization': f'Bearer {self.token}'}


class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    wait_time = between(1.0, 1.0)
