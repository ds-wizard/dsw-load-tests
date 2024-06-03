from locust import HttpUser, task


class BasicUser(HttpUser):

    @task(5)
    def run_request(self):
        self.client.get(
            url='/configs/bootstrap',
        )
