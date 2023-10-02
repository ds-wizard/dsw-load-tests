import faker
from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

fake = faker.Faker()


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def create_user_as_admin(self):
        first_name = fake.first_name()
        last_name = fake.last_name()
        user = {
            'email': f'{first_name}.{last_name}@{fake.domain_name()}',
            'firstName': first_name,
            'lastName': last_name,
            'affiliation': fake.company(),
            'password': fake.password(),
        }
        self.client.post(
            url='/users',
            json=user,
            headers=self.headers,
        )
