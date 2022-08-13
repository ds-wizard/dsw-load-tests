import json
import faker

from locust import HttpUser, task, between

fake = faker.Faker(['it_IT', 'en_GB', 'ja_JP', 'cs_CZ', 'ru_RU', 'el_GR'])


class BasicUser(HttpUser):
    wait_time = between(1, 5)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    @task(5)
    def register_new_user(self):
        first_name = fake.first_name()
        last_name = fake.last_name()
        user = {
            'email': f'{first_name}.{last_name}@{fake.domain_name()}',
            'firstName': first_name,
            'lastName': last_name,
            'affiliation': fake.company(),
            'password': fake.credit_card_number(),
        }
        self.client.post(
            url='/users',
            json=user,
        )
