from locust import task

from tests.authorized_base_test import AuthorizedBaseTest

PROJECT_UUID = 'a1cdbff5-c60e-4779-8929-e086a2da9fba'


class BasicUser(AuthorizedBaseTest):

    @task(5)
    def update_project(self):
        # TODO: randomize updates
        self.client.put(
            url=f'/projects/{PROJECT_UUID}',
            json={
                'name': 'Example project',
                'description': None,
                'projectTags': ['tag1', 'tag2', 'tag3'],
                'isTemplate': False,
                'visibility': 'PrivateProjectVisibility',
                'sharing': 'RestrictedProjectSharing',
                'templateId': None,
                'formatUuid': None,
                'permissions': [
                    {
                        'uuid': 'd92cef64-80ed-45ad-9ee3-977d8e68e385',
                        'projectUuid': 'a1cdbff5-c60e-4779-8929-e086a2da9fba',
                        'member': {'uuid': 'ec6f8e90-2a91-49ec-aa3f-9eab2267fc66', 'type': 'UserMember'},
                        'perms': ['VIEW', 'COMMENT', 'EDIT', 'ADMIN'],
                    },
                ],
            },
            headers=self.headers,
        )
