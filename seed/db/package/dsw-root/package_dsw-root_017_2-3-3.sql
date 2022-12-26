INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.3', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.3', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.2', null, null, '[{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":false},"uuid":"9f70e8fc-aa28-4e09-a659-a587b8eab62a","expertUuids":{"changed":false},"entityUuid":"558f01a3-2563-4114-9244-812b212c9791","questionType":"OptionsQuestion","parentUuid":"bb00eb32-e1c2-4288-a874-02264f757cb3","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Do you plan taking special measures to guarantee the integrity of tools in the workflow?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"7df287b4-e9fe-4ad6-b5e6-043a0a057b29","url":"https://rdmkit.elixir-europe.org/data_transfer.html","entityUuid":"2a84091c-43eb-49c1-b5d8-78b37dcb3cc5","parentUuid":"f4065e54-d27a-45de-be4c-10384feacd0d","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Transfer"},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"9e7767c1-5e50-4bcd-aa63-1aa1f84ab131","url":"https://rdmkit.elixir-europe.org/data_organisation.html","entityUuid":"68a842d8-280a-43fc-82c6-1de8b9821d17","parentUuid":"a12aa967-28a5-4a9b-8df8-f7c533205ea4","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Organisation"},{"annotations":[],"tagUuids":[],"createdAt":"2021-12-14T16:06:07.542063Z","text":null,"uuid":"f8104ac2-0dcc-49c3-bc02-48db3b24fd87","entityUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","questionType":"OptionsQuestion","parentUuid":"00ed33b9-ef1c-4de0-932b-bc6a29023e76","eventType":"AddQuestionEvent","title":"Did you document how you manage file versioning?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"b266abca-a0e1-4ce8-9597-336aaf810baa","entityUuid":"d23c7fe6-4b85-4a84-9253-0322f9a94756","parentUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"cba83d04-5031-4b6b-bcea-5ac0aab4e69c","entityUuid":"7df4eaa1-6779-473e-ab7d-44421d4e5f49","parentUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"7ced8db4-75f5-49cc-97d1-6fa675bdf759","entityUuid":"d23c7fe6-4b85-4a84-9253-0322f9a94756","parentUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0,"metricUuid":"8845fe2b-79df-4138-baea-3a035bf5e249"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"0cb9f67a-fb78-4aa1-b310-70e5e34a878e","entityUuid":"7df4eaa1-6779-473e-ab7d-44421d4e5f49","parentUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":1,"metricUuid":"8845fe2b-79df-4138-baea-3a035bf5e249"}]},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":false},"uuid":"305a20ad-2de9-4cab-91f6-8f8570271334","expertUuids":{"changed":false},"entityUuid":"a2e22a59-4747-4c29-84c0-3a9cbd859249","questionType":"OptionsQuestion","parentUuid":"00ed33b9-ef1c-4de0-932b-bc6a29023e76","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"1796fa3c-9f53-475f-89ff-c66a0453c42e"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":true,"value":"Some \"file\" storage systems do not have a tree structure like we know in a file system, but rather have direct pointers to any file in the system. Such systems are called \"object store\". Examples are Amazon S3 and CEPH"},"uuid":"965bdbe3-1d9b-4278-b316-22b362707be1","expertUuids":{"changed":false},"entityUuid":"dc39957e-688a-4f71-a6a8-57f52509e7cf","questionType":"OptionsQuestion","parentUuid":"f7f2ff16-eee0-42a7-a89a-bd7291cef5fc","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"797d3503-2c62-40ee-8e13-f39663fdeb6f","url":"https://en.wikipedia.org/wiki/Object_storage","entityUuid":"70820c40-99b2-4a5e-9bb5-71135d6c92e0","parentUuid":"dc39957e-688a-4f71-a6a8-57f52509e7cf","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"Wikipedia on object storage"},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"86a1560a-5741-4b8d-bf68-8150bbc3c028","url":"https://rdmkit.elixir-europe.org/storage.html","entityUuid":"e27878a0-c9f0-4aef-8f15-858418336a75","parentUuid":"dc39957e-688a-4f71-a6a8-57f52509e7cf","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Storage"},{"annotations":[],"tagUuids":[],"createdAt":"2021-12-14T16:06:07.542063Z","text":"Are you using an Electronic Lab Notebook (ELN) or Electronic Data Capture (EDC) applications ","uuid":"6bff2bb3-a1b8-47b0-b6dc-c1a4771978b6","entityUuid":"65730a4d-40db-46c9-b6d2-2b44b35f617e","questionType":"OptionsQuestion","parentUuid":"f7f2ff16-eee0-42a7-a89a-bd7291cef5fc","eventType":"AddQuestionEvent","title":"Are you storing (some of your) data in a specific application?","requiredPhaseUuid":"1796fa3c-9f53-475f-89ff-c66a0453c42e"},{"annotations":[],"advice":null,"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"d20fa1a6-b127-4600-aacc-94fc82e4e9fe","entityUuid":"643254d2-6f0e-419b-97d3-bd57b03ab1ac","parentUuid":"65730a4d-40db-46c9-b6d2-2b44b35f617e","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":"Note that using the data that is stored in such a system will need to be exported in some standard way before it becomes available for other data analysis tools.","createdAt":"2021-12-14T16:06:07.542063Z","uuid":"a49e975e-d508-4ff0-b95c-22a59ed6ebe2","entityUuid":"d5575f62-2083-403f-b41c-5560a5387da8","parentUuid":"65730a4d-40db-46c9-b6d2-2b44b35f617e","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":false},"uuid":"738acb30-0885-4181-88af-4de82bc6a262","expertUuids":{"changed":false},"entityUuid":"65730a4d-40db-46c9-b6d2-2b44b35f617e","questionType":"OptionsQuestion","parentUuid":"f7f2ff16-eee0-42a7-a89a-bd7291cef5fc","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Are you storing (some of your) data in an application specific manner?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":true,"value":"Are you using e.g. an Electronic Lab Notebook (ELN) or Electronic Data Capture (EDC) application? Such applications often have their own data structure that can only be accessed through the application."},"uuid":"381f7f1c-0902-4c86-9276-6467bfb0a16e","expertUuids":{"changed":false},"entityUuid":"65730a4d-40db-46c9-b6d2-2b44b35f617e","questionType":"OptionsQuestion","parentUuid":"f7f2ff16-eee0-42a7-a89a-bd7291cef5fc","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"8a17da6c-5ac4-491e-9514-69dd07d5fdca","url":"https://rdmkit.elixir-europe.org/data_analysis.html","entityUuid":"45d989ae-e78a-4d80-9af7-168ebb0d681b","parentUuid":"a1c37c05-57ff-499c-b58c-e90f511241fa","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Analysis"},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"c951ce3f-66b2-43bf-a772-3ff9c5211f24","url":"https://rdmkit.elixir-europe.org/data_analysis.html","entityUuid":"f3fd7baf-c902-4f01-b979-2f1136a1df36","parentUuid":"1991077f-04ae-4808-90a5-e4b2f82e30bf","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Analysis"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":false},"uuid":"a81c859b-35d2-48c1-933e-6141b248667a","expertUuids":{"changed":false},"entityUuid":"851a72ac-9497-4d8a-ae1a-6509d021a20b","questionType":"OptionsQuestion","parentUuid":"ae82cfc8-6b5f-4f06-a969-d430db181ac5","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Is there sufficient experience with the chosen computing platform in the project, and sufficient time to support the project partners?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2021-12-14T16:06:07.542063Z","uuid":"aa546bdf-71e2-415a-93df-101da08454b5","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"3fe12009-cd7c-4e4e-a7f8-2617c25c33c7","parentUuid":"d5990471-0618-42cd-92cb-bbbfd4f61532","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2021-12-14T16:06:07.542063Z","text":{"changed":true,"value":"Your institute may have a generic risk assessment; you should be informed about this."},"uuid":"045a5f50-ccf0-4231-8b20-1001ae4d1e94","expertUuids":{"changed":false},"entityUuid":"a20ddc5d-e883-4bc4-9948-36a2cb477d10","questionType":"OptionsQuestion","parentUuid":"b2f76c0a-847a-403c-9ed6-09cad10e625e","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}}]', '2021-12-14 16:06:07.542063 +00:00', '00000000-0000-0000-0000-000000000000');
