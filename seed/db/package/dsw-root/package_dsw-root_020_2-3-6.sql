INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.6', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.6', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

### 2.3.6
* Questions about metadata for Horizon Europe added [Marek/Jana Horizon Europe issues 4-6]

### 2.3.5
* Added Tag for Horizon Europe
* Moved the new questions from 2.3.4 from "Science Europe" to "Horizon Europe"
* Added new question about qualified references from published data sets [Marek/Jana Horizon Europe issue 3]

### 2.3.4
* Change lists of reused (non-)reference datasets that are reused into lists of considered datasets, and add a question for each detailing whether they are actually reused and what for / why not. This is to be included in the Science Europe template [Marek/Jana Horizon Europe issue 1 and 2].

### 2.3.3
* Incorporation of changes from a collaborative workshop with RDMkit participants on data processing.
   * Added links to RDMkit (and some to other external resources) in several places
   * Clarified some questions
   * Added question on data versioning for filesystems

### 2.3.2
* Incorporation of changes from a workshop with the authors of the RDMkit page on data collecting.
   * Added links to RDMkit in several places
   * Clarified some questions
   * Moved questions on quality together
   * Moved some questions out of the metadata subsection

### 2.3.1
* Incorporation of changes from a workshop with the authors of the RDMkit page on data sharing.
    * Attempt to clarify difference between "open" and "accessible"
    * Attempt to clarify difference between "open" and "embargoed"
    * Added links to RDMkit Data Sharing page in a few places
    * Added a few relevant questions

### 2.3.0

Activity during [BioHackathon Europe](biohackathon-europe.org) 2020 ([#BioHackEU20](twitter.com/search?q=%23BioHackEU20))

* Added and tagged questions for Horizon 2020 template
* Moved questions about collecting metadata to one consistent place
* Added guidance on semantics in file names and question about using PIDs for identifying files
* Generic small cleanups and typo fixes
* Closing many issues of feedback received on the knowledge model (from [DSWGlobal/dsw](https://github.com/DSWGlobal/dsw))
* Various question updates new options, clarifications, integrations
* Added highly configurable [Wikidata](https://www.wikidata.org) SPARQL-based integration
* Added [Research Organization Registry](https://ror.org) integration for contributor''s affiliation

### 2.2.0

* Adjusted for compatibility with [RDA DMP Common Standard for machine-actionable DMPs (1.0)](https://github.com/RDA-DMP-Common/RDA-DMP-Common-Standard)
  * Updated *Project* and *Funding* questions in *Administrative Details* chapter
  * Reorganised *Dataset*, *Distribution*, *License* questions in *Data Publishing* chapter
* Added *maDMP* tag to questions used in the RDA maDMP template

### 2.1.0

* Added *Science Europe DMP* tag to questions used in the Science Europe template

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.5', null, null, '[{"annotations":[],"tagUuids":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"],"createdAt":"2022-01-10T14:44:02.158721Z","text":null,"uuid":"f9ed7148-a931-4bdb-bf48-e8557f319d8d","entityUuid":"c37476ca-0f0f-47a9-87b2-505a67b83558","questionType":"OptionsQuestion","parentUuid":"aec37b0d-490d-4d75-8814-8ed78ea5b8dd","eventType":"AddQuestionEvent","title":"Will you be including keywords to optimise the possibility for discovery and potential reuse?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"8c9cd6eb-d123-42c2-91dc-4b7ddca87ed8","entityUuid":"ca706a0f-ef35-4ee6-ba48-c73a4c33dafe","parentUuid":"c37476ca-0f0f-47a9-87b2-505a67b83558","eventType":"AddAnswerEvent","metricMeasures":[{"weight":1,"measure":0,"metricUuid":"8db30660-d4e5-4c0a-bf3e-553f3f0f997a"}],"label":"No"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"42134fba-bd9c-481f-8e5c-5b1cef13aa83","expertUuids":{"changed":false},"entityUuid":"c37476ca-0f0f-47a9-87b2-505a67b83558","questionType":"OptionsQuestion","parentUuid":"aec37b0d-490d-4d75-8814-8ed78ea5b8dd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"a96ec18f-d55d-4c73-bc45-2ac325cf98a2","entityUuid":"b6cb254e-f243-4a43-af2d-72864d51969e","parentUuid":"c37476ca-0f0f-47a9-87b2-505a67b83558","eventType":"AddAnswerEvent","metricMeasures":[{"weight":1,"measure":1,"metricUuid":"8db30660-d4e5-4c0a-bf3e-553f3f0f997a"}],"label":"Yes"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"7472df7f-b792-4e37-a66d-7be31a69879d","expertUuids":{"changed":false},"entityUuid":"c37476ca-0f0f-47a9-87b2-505a67b83558","questionType":"OptionsQuestion","parentUuid":"aec37b0d-490d-4d75-8814-8ed78ea5b8dd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will you be including keywords or relevant ontology references to optimise the possibility for discovery and potential reuse?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"],"createdAt":"2022-01-10T14:44:02.158721Z","text":"Horizon Europe demands that metadata is completely open, e.g. provided under a CC0 license, and that any deviation from this is clarified.","uuid":"b74bfb49-5fcd-4cb8-9914-7e7a80995567","entityUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","questionType":"OptionsQuestion","parentUuid":"6be88f7c-f868-460f-bba7-91e1c659adfd","eventType":"AddQuestionEvent","title":"Will metadata be available openly?","requiredPhaseUuid":"1796fa3c-9f53-475f-89ff-c66a0453c42e"},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"2584189b-5618-4cdd-8c1c-8b20b4f516db","entityUuid":"1dc216a6-77df-4f75-8bab-8e4f082fdab2","parentUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"140ba2ea-7429-4705-83bd-b2eca3e3776a","expertUuids":{"changed":false},"entityUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","questionType":"OptionsQuestion","parentUuid":"6be88f7c-f868-460f-bba7-91e1c659adfd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"077bf98a-c2c1-4f48-b513-197f86ee6283","entityUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","parentUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","eventType":"AddAnswerEvent","metricMeasures":[{"weight":1,"measure":1,"metricUuid":"8db30660-d4e5-4c0a-bf3e-553f3f0f997a"}],"label":"Yes"},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"3d93f79e-79e8-4b9c-ae1b-803d0b136d2e","entityUuid":"1dc216a6-77df-4f75-8bab-8e4f082fdab2","parentUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0,"metricUuid":"8db30660-d4e5-4c0a-bf3e-553f3f0f997a"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"f776d038-b951-4001-9174-f862a27991a2","expertUuids":{"changed":false},"entityUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","questionType":"OptionsQuestion","parentUuid":"6be88f7c-f868-460f-bba7-91e1c659adfd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"3887e150-a47d-4962-bbc0-ccafc59385e4","entityUuid":"1dc216a6-77df-4f75-8bab-8e4f082fdab2","parentUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"91ea527d-be77-42c3-937d-3a868ae31885","entityUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","parentUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":1,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":[],"tagUuids":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"],"createdAt":"2022-01-10T14:44:02.158721Z","text":null,"uuid":"7577735c-8dfd-4985-bb29-59884b85993f","entityUuid":"6b5a6334-fbb3-4c88-995a-6d899e30da1e","questionType":"ValueQuestion","parentUuid":"1dc216a6-77df-4f75-8bab-8e4f082fdab2","eventType":"AddQuestionEvent","title":"Please explain why the metadata will not be openly available","valueType":"TextQuestionValueType","requiredPhaseUuid":"1796fa3c-9f53-475f-89ff-c66a0453c42e"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"09f44432-02ca-4011-886a-d0155e8d4adc","expertUuids":{"changed":false},"entityUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","questionType":"OptionsQuestion","parentUuid":"6be88f7c-f868-460f-bba7-91e1c659adfd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"],"createdAt":"2022-01-10T14:44:02.158721Z","text":null,"uuid":"7d546532-0faa-4163-bb93-8e581abe95a8","entityUuid":"26b2afa6-99e8-4337-b380-5642bc807ad8","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"AddQuestionEvent","title":"Will metadata contain instructions how to get access to the data?","requiredPhaseUuid":"1796fa3c-9f53-475f-89ff-c66a0453c42e"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"a77f1fb3-18e3-44af-bede-e7112f42632a","expertUuids":{"changed":false},"entityUuid":"12baa8af-db59-43a5-8ec7-0941c58ff89a","questionType":"OptionsQuestion","parentUuid":"6be88f7c-f868-460f-bba7-91e1c659adfd","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-10T14:44:02.158721Z","text":"Repositories often allow search engines and catalogues to index the metadata in an automated way. Will this be the case for your data?","uuid":"fe88db16-6140-4278-b5b4-a507b051d622","entityUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"AddQuestionEvent","title":"Will the metadata be available in a form that can be harvested and indexed?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"8b122faf-56a9-46f1-9e40-a204c1db386f","entityUuid":"e3f7a89a-2d34-4b44-81bf-773b1d8cd2e3","parentUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","eventType":"AddAnswerEvent","metricMeasures":[{"weight":1,"measure":0,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}],"label":"No"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"9554b1c0-9c52-4fc7-a477-27a94aa72546","expertUuids":{"changed":false},"entityUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"0d12662c-c919-4c20-94d9-7f97c068343b","entityUuid":"6833a1fa-62fe-46b1-bb81-a3e42ff9626d","parentUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes, by the repository / repositories"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"6a6e495b-6874-4653-89d8-2a5acf9ad13b","expertUuids":{"changed":false},"entityUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"1796fa3c-9f53-475f-89ff-c66a0453c42e"}},{"annotations":[],"advice":null,"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"9de62d65-d7d7-4b71-a2bf-893ee17f199d","entityUuid":"90bd5ae9-087f-429d-8e2a-d322078f1d20","parentUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes, we will take care of that"},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"80bff201-7d2c-4d99-b0b4-9321f615b820","expertUuids":{"changed":false},"entityUuid":"26b2afa6-99e8-4337-b380-5642bc807ad8","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"bf3cbf75-2d06-456f-b2e2-d76d03448eb7","expertUuids":{"changed":false},"entityUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"9e9fa1f1-5cae-4c05-96e9-0780612c074e","entityUuid":"6833a1fa-62fe-46b1-bb81-a3e42ff9626d","parentUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":1,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-10T14:44:02.158721Z","uuid":"7908a48e-a165-4f3c-a615-2b0cf4a3424d","entityUuid":"90bd5ae9-087f-429d-8e2a-d322078f1d20","parentUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":1,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T14:44:02.158721Z","text":{"changed":false},"uuid":"9f452671-36f1-490e-b65c-353c91e4e81d","expertUuids":{"changed":false},"entityUuid":"1270ea5a-92a2-46ce-b658-9bf2862b9b57","questionType":"OptionsQuestion","parentUuid":"cb148cc8-f15f-494f-a197-f01e3111ec60","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}}]', '2022-01-10 14:44:02.158721 +00:00', '00000000-0000-0000-0000-000000000000');
