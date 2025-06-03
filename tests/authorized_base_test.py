import resource

from locust import HttpUser, between

from tests.conf import WIZARD_API_TOKEN

resource.setrlimit(resource.RLIMIT_NOFILE, (10240, 9223372036854775807))

from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry

retry_strategy = Retry(
    total=5,
    backoff_factor=0.5,
    status_forcelist=[429, 502, 503, 504],
)


class AuthorizedBaseTest(HttpUser):
    abstract = True
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.headers = {'Authorization': f'Bearer {WIZARD_API_TOKEN}'}
        adapter = HTTPAdapter(max_retries=retry_strategy)
        self.client.mount("https://", adapter)
