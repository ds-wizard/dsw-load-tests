INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:1.2.0', 'Common DSW Knowledge Model', 'dsw', 'root', '1.2.0', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

### 1.2.0

* Adding file naming SOP description question (9ff389f0-2236-48cf-880c-040ea1bb0d2f) to chapter 2 according to [ds-km@d879be0]https://github.com/ds-wizard/ds-km/commit/d879be0fa9d0808868396c649d03c4d783ac6742)

### 1.1.0

* Adding phases to questions (first draft) according to [ds-km@a6713d1](https://github.com/ds-wizard/ds-km/commit/a6713d1a4b9758bea63b3f7c56af5bd4f500d949) and [ds-km@1123211](https://github.com/ds-wizard/ds-km/commit/1123211bb5af43df8ef435039a2923f48e3e981c)

Prior to this version, all questions were assigned with phase 2 - *Before submitting the DMP*. 

### 1.0.3

* Fix: Removing extra question mark for a question (8018e15f-6c7e-433a-8686-ae0d695c7fc7) in chapter 5 according to: [ds-km@1123211](https://github.com/ds-wizard/ds-km/commit/1123211bb5af43df8ef435039a2923f48e3e981c)

### 1.0.2

* Fix: Adding some explanation to the list item questions (f5fef09d-ade5-4019-b089-f05bd89c34bc and b642c31d-a512-4ca7-8743-a2e0254006fa) in chapter 3 according to: [ds-km@96e28f4](https://github.com/ds-wizard/ds-km/commit/96e28f478d5dc6b59d384b5127f012dc2fe5f287)

### 1.0.1

* Fix: Adding forgotten question mark to end of question (39e0cc7c-17fe-4991-88d8-1280c3fe7923) in chapter 1 according to: [ds-km@644a373](https://github.com/ds-wizard/ds-km/commit/644a373685dc4ac15b76e86667a90151ca9c70ca)

### 1.0.0

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:1.1.0', null, null, '[{"annotations":[],"tagUuids":[],"createdAt":"2019-06-09T17:52:45.087Z","text":"Describe how everyone in the project will be naming files and folders, and what folder structure you will use.","uuid":"273f0af2-3cbc-4683-be1b-e0422ae3ba0c","entityUuid":"9ff389f0-2236-48cf-880c-040ea1bb0d2f","questionType":"ValueQuestion","parentUuid":"8b13234e-879b-4221-be12-4df24e6de00e","eventType":"AddQuestionEvent","title":"Describe your SOP (Standard Operating Procedure) for file naming","valueType":"TextQuestionValueType","requiredPhaseUuid":null}]', '2019-06-09 17:52:45.087000 +00:00', '00000000-0000-0000-0000-000000000000');
