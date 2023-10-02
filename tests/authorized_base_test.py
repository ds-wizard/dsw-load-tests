from locust import HttpUser, between

from tests.conf import WIZARD_API_TOKEN


class AuthorizedBaseTest(HttpUser):
    abstract = True
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.headers = {'Authorization': f'Bearer {WIZARD_API_TOKEN}'}
