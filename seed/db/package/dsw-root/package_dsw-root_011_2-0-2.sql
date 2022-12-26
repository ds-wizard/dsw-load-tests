INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.0.2', 'Common DSW Knowledge Model', 'dsw', 'root', '2.0.2', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

### 2.0.2

* Fixed missing and duplicated questions

### 2.0.1

* Fixed duplicated question in *Creating and collecting data* chapter (5ba53879-eb48-47f2-a73b-f7f7d83bf030)

### 2.0.0

* Added detailed questions for Science Europe DMPs
* Fixed several typos and other minor problems
* Added administrative chapter
* Moving questions and refactoring according to [ds-km#24](https://github.com/ds-wizard/ds-km/pull/24)

### 1.4.0

* Adding integration for [FAIRsharing.org](https://fairsharing.org)
* Adding 5 integration questions according to [ds-km@da5a8fc](https://github.com/ds-wizard/ds-km/commit/da5a8fc95d0a67f9369ce0b7727615115fc3656d)

The FAIRsharing integration requires configuration to contain `apiUrl` and `apiKey` for integration with id `fairsharing`.

### 1.3.0

* Refactoring list questions because of **deprecated item title** fields, i.e., a new question for item title created for each list question

When using this version and higher, the DS Wizard configuration should have `itemTitleEnabled` set to `false`.

### 1.2.0

* Adding file naming SOP description question (9ff389f0-2236-48cf-880c-040ea1bb0d2f) to chapter 2 according to [ds-km@d879be0](https://github.com/ds-wizard/ds-km/commit/d879be0fa9d0808868396c649d03c4d783ac6742)

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.0.1', null, null, '[{"annotations":{"changed":false},"createdAt":"2020-05-09T21:00:00Z","text":{"changed":false},"uuid":"2ea395f8-faac-4918-b653-d0bf526a84be","questionUuids":{"changed":true,"value":["b08fe063-33f8-4380-b3a9-ba1e586dedf2","5ba53879-eb48-47f2-a73b-f7f7d83bf030","8c962e6f-17ee-4b22-8ebb-9f06f779e3b3","f5fef09d-ade5-4019-b089-f05bd89c34bc","f038bd46-ee4e-4f53-b7ea-482381c2c855","ab4b3f39-dfab-45a5-9489-2d46ceacbb73","0e810343-6026-4992-8ea0-5539cbc77093","f5e162ee-1077-4ebe-a932-192bc7f67e98","cb7d17a8-30c0-489d-a43c-702b27d97611"]},"entityUuid":"b1df3c74-0b1f-4574-81c4-4cc2d780c1af","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditChapterEvent","title":{"changed":false}},{"annotations":{"changed":false},"createdAt":"2020-05-09T21:00:00Z","text":{"changed":false},"uuid":"361a4733-4406-4b03-868b-9dae5dc270a5","questionUuids":{"changed":true,"value":["d5784d24-0e66-4821-bd62-a711fb6d7a40","4e0c1edf-660c-4ebf-81f5-9fa959dead30","de23bb94-b727-4907-9a5d-6f8c78c3e432","13a7eeae-09f5-42bf-8e62-b2c1fe1b86f7","92a10652-3675-48f2-8d50-180a29cec62e","25e9fe5b-d8f7-4b43-a903-7809a571a2bb","4baf405e-262e-4f1a-bfdc-fe72fc628650","f9d84278-b61d-4314-94e9-12644bfa1d00","a84cdefc-8c41-4949-9353-5916532ad50c","1ae8d7b0-4bcd-4914-aaea-fa389fc056f4","948b5fd8-c1bd-457d-8f81-ea2fd093f541","588ad032-56ba-4d52-b29c-6a5b56aa6569","2f5dfefc-a42e-4c40-a676-7d187b22cb72"]},"entityUuid":"d5b27482-b598-4b8c-b534-417d4ad27394","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditChapterEvent","title":{"changed":false}}]', '2020-05-09 21:00:00.000000 +00:00', '00000000-0000-0000-0000-000000000000');
