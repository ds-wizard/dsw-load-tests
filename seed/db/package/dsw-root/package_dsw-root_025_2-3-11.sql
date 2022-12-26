INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.11', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.11', 13,'DSW Knowledge Model originating from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

### 2.3.11

* Incorporating changes made in the Plant Sciences workshop with RDMkit

### 2.3.10

* Added references and questions from an RDMkit/DS Wizard working session on Preserving Data

### 2.3.9

* Fix missing Yes/No answers and use Text-Value for description of policies

### 2.3.8

* Questions for Horizon Europe added on budget for data management, other policies that are observed, persistent identifier allocation and archive preservation policies [Marek/Jana Horizon Europe issues 7-9, 11]

### 2.3.7

* Added references and questions from an RDMkit/DS Wizard working session on Human Data

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.10', null, null, '[{"annotations":{"changed":false},"createdAt":"2022-02-11T12:44:47.902Z","text":{"changed":false},"uuid":"0a25b343-40ea-477a-9ca9-2869149f93b0","questionUuids":{"changed":true,"value":["b2fb6b4e-2961-40a4-a9ec-faf4e49a978b","0e810343-6026-4992-8ea0-5539cbc77093","8e886b55-3287-48e7-b353-daf6ab40f7d8","b08fe063-33f8-4380-b3a9-ba1e586dedf2","2bac9020-99cf-4463-8d34-0b0eb2781cd1","5ba53879-eb48-47f2-a73b-f7f7d83bf030","8c962e6f-17ee-4b22-8ebb-9f06f779e3b3","f87c331d-794a-42c8-a910-61a2a9110dab","f038bd46-ee4e-4f53-b7ea-482381c2c855","ab4b3f39-dfab-45a5-9489-2d46ceacbb73","49c009cb-a38c-4836-9780-8a8b3dd1cbac","cb7d17a8-30c0-489d-a43c-702b27d97611","02b3fed1-0b50-4a80-b8b6-a225a1107022"]},"entityUuid":"b1df3c74-0b1f-4574-81c4-4cc2d780c1af","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditChapterEvent","title":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T12:47:40.696Z","text":{"changed":true,"value":"Will you be collecting artefacts like specimens, minerals, biological samples?"},"uuid":"dd2da897-1b7a-4d73-9000-eda703a390f1","expertUuids":{"changed":false},"entityUuid":"0e810343-6026-4992-8ea0-5539cbc77093","questionType":"OptionsQuestion","parentUuid":"b1df3c74-0b1f-4574-81c4-4cc2d780c1af","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will you be collecting physical samples?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-11T12:53:05.197Z","text":null,"uuid":"63d58a2f-373b-4936-83d0-97ce3c52de27","entityUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","questionType":"OptionsQuestion","parentUuid":"05873934-f03d-4d90-8bfd-291350c14673","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T12:53:59.91Z","uuid":"0dc020fa-3e49-415c-9380-49c671d377ae","entityUuid":"05873934-f03d-4d90-8bfd-291350c14673","parentUuid":"0e810343-6026-4992-8ea0-5539cbc77093","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":true,"value":["f67a9910-4ea3-4280-b503-386dff3b8305","da0d28e6-1c6e-44d8-ba47-d834aeca847b","d488b314-2b5c-4e79-be1e-c5742205d2a5","9e238002-da35-4f9b-a9b7-8fe3613a3c03"]},"label":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T12:57:46.95Z","text":{"changed":true,"value":"In some fields, it is considered good practice to deposit samples to a public repository before deriving any digital data from them."},"uuid":"c328e40f-fd4c-48ba-a48d-a24691000000","expertUuids":{"changed":false},"entityUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","questionType":"OptionsQuestion","parentUuid":"05873934-f03d-4d90-8bfd-291350c14673","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Do your samples need to be submitted to a public repository?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-02-11T12:57:46.95Z","uuid":"7cf54577-3f5c-4294-a45d-b19d16410c8d","entityUuid":"8095f86a-0456-483e-a9ea-074ebabf3874","parentUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T13:01:10.2Z","uuid":"708ad2ac-adcc-4c6a-b8b1-39dbabf1f47f","entityUuid":"8095f86a-0456-483e-a9ea-074ebabf3874","parentUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"No"}},{"annotations":[],"advice":null,"createdAt":"2022-02-11T13:01:13.663Z","uuid":"51e93003-800f-4cb7-aa17-282e5f516d73","entityUuid":"a8938dfc-2e79-4268-9ec5-eb6dc54e9795","parentUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T13:01:16.903Z","uuid":"c3af9534-f92b-4f48-b963-a0a9d0f9b74d","entityUuid":"a8938dfc-2e79-4268-9ec5-eb6dc54e9795","parentUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T13:01:20.603Z","text":{"changed":false},"uuid":"403d6902-a301-4fb3-9e57-cf0872b9d08b","expertUuids":{"changed":false},"entityUuid":"f67a9910-4ea3-4280-b503-386dff3b8305","questionType":"OptionsQuestion","parentUuid":"05873934-f03d-4d90-8bfd-291350c14673","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"b101f2d0-2476-452d-aa8d-95a41a02b52c"}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-11T13:04:22.786Z","text":null,"uuid":"3835e5a8-533c-4d0b-a4cd-e756c5861650","entityUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","questionType":"OptionsQuestion","parentUuid":"8095f86a-0456-483e-a9ea-074ebabf3874","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T13:04:29.231Z","text":{"changed":false},"uuid":"3a0bff9e-b1ea-4a5d-988e-55a1260d364d","expertUuids":{"changed":false},"entityUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","questionType":"OptionsQuestion","parentUuid":"8095f86a-0456-483e-a9ea-074ebabf3874","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will the samples be stored in a local repository such as a biobank?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T13:04:29.231Z","text":{"changed":false},"uuid":"279d0c17-339d-48df-b6c0-856a3b16ecc1","expertUuids":{"changed":false},"entityUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","questionType":"OptionsQuestion","parentUuid":"8095f86a-0456-483e-a9ea-074ebabf3874","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"b101f2d0-2476-452d-aa8d-95a41a02b52c"}},{"annotations":[],"advice":null,"createdAt":"2022-02-11T13:04:29.231Z","uuid":"db192a01-f588-4e73-92f7-9bb2debb58cf","entityUuid":"ed957bb8-f38d-4f6e-840a-ff62a444c6d9","parentUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T13:04:59.951Z","uuid":"068315d1-1846-4d46-b62f-4e1cee798bce","entityUuid":"ed957bb8-f38d-4f6e-840a-ff62a444c6d9","parentUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"No"}},{"annotations":[],"advice":null,"createdAt":"2022-02-11T13:05:03.822Z","uuid":"71469ef5-d95a-441c-aa3d-14c0859ae3e5","entityUuid":"9562c8d0-6d85-49fa-95fd-0a6701ab836a","parentUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T13:05:06.362Z","uuid":"ad6e1402-48fe-40c9-b9f0-598ce09e2b17","entityUuid":"9562c8d0-6d85-49fa-95fd-0a6701ab836a","parentUuid":"cc57d7c0-49db-4546-958f-e9407eaf93ee","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes"}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-11T13:09:12.08Z","uuid":"ad6f37da-c9d6-472b-a460-a37baf3f9d0a","entityUuid":"a0ced35d-28f4-4208-b4b1-bb524401939d","parentUuid":"da0d28e6-1c6e-44d8-ba47-d834aeca847b","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Samples will only get an internal code"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-11T13:09:36.066Z","text":{"changed":false},"uuid":"96a60fcc-22d1-46a6-b8e4-6daef2202da8","expertUuids":{"changed":false},"entityUuid":"d488b314-2b5c-4e79-be1e-c5742205d2a5","questionType":"ValueQuestion","parentUuid":"05873934-f03d-4d90-8bfd-291350c14673","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":true,"value":"Where will the physical samples be stored"},"valueType":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2022-02-11T13:11:05.07Z","uuid":"3f54d6cf-0770-4a94-ac51-25f878838880","url":"","entityUuid":"5c6e0a81-4a69-4542-a667-f3e67d56392e","parentUuid":"9e238002-da35-4f9b-a9b7-8fe3613a3c03","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-11T13:14:05.307Z","uuid":"29e32d99-8763-4db0-b618-ff88a418022a","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/identifiers.html"},"entityUuid":"5c6e0a81-4a69-4542-a667-f3e67d56392e","parentUuid":"9e238002-da35-4f9b-a9b7-8fe3613a3c03","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Identifiers"}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-14T07:49:59.89Z","uuid":"c1cba84f-91f8-4308-8f73-a22470874359","entityUuid":"c3c74172-5030-44e0-9c04-6c29479ccfdc","parentUuid":"f1609178-599a-4da6-b93b-776e4f9b626c","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0,"metricUuid":"8845fe2b-79df-4138-baea-3a035bf5e249"}]},"followUpUuids":{"changed":false},"label":{"changed":false}}]', '2022-02-15 06:21:14.460383 +00:00', '00000000-0000-0000-0000-000000000000');
