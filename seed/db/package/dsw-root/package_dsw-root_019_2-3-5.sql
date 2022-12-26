INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.5', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.5', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.4', null, null, '[{"annotations":[],"tagUuids":[],"createdAt":"2022-01-10T11:57:02.002951Z","text":"Please list any references to other data sets, e.g. from your project or from earlier research. Note: A qualified reference is a cross-reference that explains its intent. For example, X is regulator of Y is a much more qualified reference than X is associated with Y, or X see also Y. The goal therefore is to create as many meaningful links as possible between (meta)data resources to enrich the contextual knowledge about the data","uuid":"e2fd499c-e3de-4265-9ad9-2e2b73501637","entityUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","questionType":"ListQuestion","parentUuid":"8d1b07a7-f177-41f5-9532-05536223a8d6","eventType":"AddQuestionEvent","title":"Qualified references to other data sets","requiredPhaseUuid":null},{"annotations":[],"createdAt":"2022-01-10T11:57:02.002951Z","uuid":"2483c03a-9309-4bfb-95e7-3ad7f2da364d","url":"https://www.go-fair.org/fair-principles/i3-metadata-include-qualified-references-metadata/","entityUuid":"c57507b2-9581-465d-ba9a-7dcd8cfab8c0","parentUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"FAIR principle \"I3\""},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":true,"value":"Please list any references to other data sets, e.g. from your project or from earlier research. \n\nNote: A qualified reference is a cross-reference that explains its intent. For example, X is regulator of Y is a much more qualified reference than X is associated with Y, or X see also Y. The goal therefore is to create as many meaningful links as possible between (meta)data resources to enrich the contextual knowledge about the data."},"uuid":"960f3330-8279-4e45-9681-a9a70aba752d","expertUuids":{"changed":false},"entityUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","questionType":"ListQuestion","parentUuid":"8d1b07a7-f177-41f5-9532-05536223a8d6","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-10T11:57:02.002951Z","text":null,"uuid":"3b029e33-ecd9-4ac7-9245-b18ac59f458b","entityUuid":"abb6ac92-6508-4a24-b262-5d64db4ae731","questionType":"ValueQuestion","parentUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","eventType":"AddQuestionEvent","title":"Identifier of the data set that will be referred to","valueType":"StringQuestionValueType","requiredPhaseUuid":null},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-10T11:57:02.002951Z","text":null,"uuid":"4a5fa4b8-4f42-41f4-8c32-f98dbf212be2","entityUuid":"c70e49f9-09e4-456a-814b-bbaa8fde887c","questionType":"ValueQuestion","parentUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","eventType":"AddQuestionEvent","title":"The relationship between this dataset and the referred data set","valueType":"TextQuestionValueType","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"b6e8ab0e-f2be-4a17-90db-322dc6f9d978","expertUuids":{"changed":false},"entityUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","questionType":"ListQuestion","parentUuid":"8d1b07a7-f177-41f5-9532-05536223a8d6","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Which qualified references to other data sets will be included"},"requiredPhaseUuid":{"changed":true,"value":"adc9133d-afcd-4616-9aea-db5f475898a2"}},{"annotations":[],"createdAt":"2022-01-10T11:57:02.002951Z","color":"#3498DB","uuid":"979f6cd4-79f4-4f9a-b8e7-8f926eb43eb6","entityUuid":"87bb2042-8e3c-4733-ba1e-84509d7b1cf4","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"AddTagEvent","name":"Horizon Europe DMP","description":null},{"annotations":{"changed":false},"createdAt":"2022-01-10T11:57:02.002951Z","color":{"changed":true,"value":"#2ECC71"},"uuid":"fedf8a09-b40f-4bfc-80f6-57550cb39ffa","entityUuid":"87bb2042-8e3c-4733-ba1e-84509d7b1cf4","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditTagEvent","name":{"changed":false},"description":{"changed":false}},{"annotations":{"changed":false},"createdAt":"2022-01-10T11:57:02.002951Z","color":{"changed":false},"uuid":"9080f0f1-47cf-4e9f-a883-e84327dfabdd","entityUuid":"87bb2042-8e3c-4733-ba1e-84509d7b1cf4","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditTagEvent","name":{"changed":false},"description":{"changed":true,"value":"Questions related to the Horizon Europe DMP"}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"82e8470c-731c-42f9-9371-da5c807a929a","expertUuids":{"changed":false},"entityUuid":"7828d3a0-29bf-450e-aee9-473457a225fd","questionType":"ListQuestion","parentUuid":"8d1b07a7-f177-41f5-9532-05536223a8d6","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4","3c7bdc90-8ed3-4b34-90ec-7945d14cc443","19b0fe70-a884-4539-96b9-a0aaf8c9b884","fd4637a2-a117-460a-a7fa-c03760c42629"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"32fdd3f9-72f4-4cf6-b4bb-836432481057","expertUuids":{"changed":false},"entityUuid":"efc80cc8-8318-4f8c-acb7-dc1c60e491c1","questionType":"OptionsQuestion","parentUuid":"82fd0cce-2b41-423f-92ad-636d0872045c","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4","3c7bdc90-8ed3-4b34-90ec-7945d14cc443","fd4637a2-a117-460a-a7fa-c03760c42629"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"723e9cca-3e43-4d08-8eba-860613a3e0a7","expertUuids":{"changed":false},"entityUuid":"fcc51962-08df-4f4c-85ad-6bb932107010","questionType":"ListQuestion","parentUuid":"2663b978-5125-4224-9930-0a50dbe895c9","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["3c7bdc90-8ed3-4b34-90ec-7945d14cc443","87bb2042-8e3c-4733-ba1e-84509d7b1cf4","fd4637a2-a117-460a-a7fa-c03760c42629"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"f33073e9-6335-40d3-a4a9-8e2d83518f3f","expertUuids":{"changed":false},"entityUuid":"58401091-2d48-4231-983a-c972d11d9f6e","questionType":"OptionsQuestion","parentUuid":"fcc51962-08df-4f4c-85ad-6bb932107010","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4","3c7bdc90-8ed3-4b34-90ec-7945d14cc443","19b0fe70-a884-4539-96b9-a0aaf8c9b884","fd4637a2-a117-460a-a7fa-c03760c42629"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"06559ee2-cdbd-46e4-83e0-d7dde89894b2","expertUuids":{"changed":false},"entityUuid":"be872000-cb98-442f-999c-ca3ef58dcfe8","questionType":"ListQuestion","parentUuid":"2663b978-5125-4224-9930-0a50dbe895c9","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["3c7bdc90-8ed3-4b34-90ec-7945d14cc443","87bb2042-8e3c-4733-ba1e-84509d7b1cf4","fd4637a2-a117-460a-a7fa-c03760c42629"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"42bbb539-dda3-470e-b5cb-934f85979fea","expertUuids":{"changed":false},"entityUuid":"f5e129dc-d59d-4352-a5ed-25efe1d83811","questionType":"OptionsQuestion","parentUuid":"be872000-cb98-442f-999c-ca3ef58dcfe8","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"f47c477e-eca2-43b0-bf85-6cd8a9f2fb89","expertUuids":{"changed":false},"entityUuid":"eb711ea8-8ee7-40b1-a56d-1a374fe8b4c2","questionType":"ValueQuestion","parentUuid":"7fc8d3c9-a2d5-4d47-9df4-56af48ca85e1","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"9fc3ddaf-b5c2-46ca-9df8-3e1a10b6f315","expertUuids":{"changed":false},"entityUuid":"4e0141ae-bec4-492e-98f4-b79a32c7e946","questionType":"OptionsQuestion","parentUuid":"042540a6-5b4a-483d-af23-f33b486d85f5","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"6262d728-17eb-4e41-a761-a549fc3636c2","expertUuids":{"changed":false},"entityUuid":"d45ad247-19d4-4919-9a6c-094f696168b6","questionType":"OptionsQuestion","parentUuid":"81642493-5919-42c6-b9b7-af4cdbe1937b","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":true,"value":["87bb2042-8e3c-4733-ba1e-84509d7b1cf4"]},"createdAt":"2022-01-10T11:57:02.002951Z","text":{"changed":false},"uuid":"5b0c564b-c875-45f0-9096-f38381e63e48","expertUuids":{"changed":false},"entityUuid":"bf02f456-0a60-4b50-ae86-5cd56d430b2e","questionType":"ValueQuestion","parentUuid":"8a1937d8-39dc-4efd-a3f6-b62e789f225b","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":false},"requiredPhaseUuid":{"changed":false}}]', '2022-01-10 11:57:02.002951 +00:00', '00000000-0000-0000-0000-000000000000');
