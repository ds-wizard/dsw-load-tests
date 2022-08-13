from locust import HttpUser, task, between

USERNAME = 'albert.einstein@example.com'
PASSWORD = 'password'


class BasicUser(HttpUser):
    wait_time = between(1, 5)

    @task(5)
    def get_server_info_and_config(self):
        self.client.get('/')
        self.client.get('/configs/bootstrap')

    @task(1)
    def login_correct(self):
        self.client.post(
            url='/tokens',
            json={
                'email': USERNAME,
                'password': PASSWORD,
            },
        )

    @task(1)
    def login_incorrect(self):
        with self.client.post(
            url='/tokens',
            json={
                'email': USERNAME,
                'password': 'incorrect_password',
            },
            catch_response=True,
        ) as response:
            if response.status_code == 400:
                response.success()
