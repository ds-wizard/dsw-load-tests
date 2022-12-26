INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.10', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.10', 13,'DSW Knowledge Model originating from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.9', null, null, '[{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T09:20:14.984Z","text":{"changed":true,"value":"Please add all \"formal\" identifiers you have for this data set: these can be handles or DOIs or any other type. One important purpose of these identifiers is to be able to find the dataset back.\n\nA good identifier is _persistent_ (i.e. it does not change, and also the same identifier will never be used for another data set), _globally unique_ (nobody else uses the same identifier for a different data set) and _resolvable_ (you can actually locate the data set if you only know the identifier).\n\nNote that if you will be publishing the dataset in a repository, the repository may also assign a persistent identifier. You will be able to specify such additional identifiers under the \"publication\"-questions. Specify one main identifier here."},"uuid":"ea8f9851-f8a1-4941-9406-6b7bcca259cb","expertUuids":{"changed":false},"entityUuid":"cf727a0a-78c4-45a7-aa9b-cf7650ae873a","questionType":"ListQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-03T09:54:43.037Z","text":null,"uuid":"f3d95a65-7506-4d51-885f-421fcbf484fb","entityUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T09:56:25.992Z","text":{"changed":false},"uuid":"f1853229-dbb5-496f-9ead-157b0147ad7d","expertUuids":{"changed":false},"entityUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"What type of data is in this data set?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T09:57:31.609Z","text":{"changed":false},"uuid":"e8bc1ec4-4f8c-43a6-96eb-4d80ef37a99f","expertUuids":{"changed":false},"entityUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","questionType":"ListQuestion","parentUuid":"d5b27482-b598-4b8c-b534-417d4ad27394","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":true,"value":["b0949d09-d179-4491-9fb4-14b0deb9f862","205a886d-83d7-4359-ae63-7103e05357c3","3a8ed3fc-b1a6-4119-80ed-238804861734","cf727a0a-78c4-45a7-aa9b-cf7650ae873a","a063da1c-aaea-4e18-85ec-f560d833f292","d4e6a244-07fb-4573-b93f-c20a9409ac7c","3b3fbcc6-c405-4151-8dce-e11dbd46b1bd","a1d76760-053c-4706-80a2-cfb6c6a061f3","cc95b399-7d8d-4232-bccf-686f78c91bff"]},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T09:57:48.327Z","uuid":"84024e03-2858-4784-8bd9-6ebe977b36ba","entityUuid":"79f7797e-f7b1-4930-b691-84bee936af20","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T09:57:51.964Z","uuid":"8bae56c5-f8d7-42be-8713-36f6afbacf2b","entityUuid":"79f7797e-f7b1-4930-b691-84bee936af20","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Raw data"}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T09:57:58.662Z","uuid":"08ca4e01-c1f6-4f0e-9a78-402091204c42","entityUuid":"5b49df5e-1d06-446f-a518-33a06928b598","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T09:58:03.192Z","uuid":"9b904883-73a7-481f-b6d5-1d3af4cd54f7","entityUuid":"5b49df5e-1d06-446f-a518-33a06928b598","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Intermediate data"}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T09:58:11.958Z","uuid":"66f53538-8683-4869-a722-3f187ec7a7a4","entityUuid":"4fa0c31a-bd3b-4ae0-8f56-639ae2212124","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":[],"advice":null,"createdAt":"2022-02-03T09:58:47.067Z","uuid":"78bcb872-6e1e-43e1-9d30-08ca68cef444","entityUuid":"626a610e-34ac-40ca-8bf6-7926f580ae80","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T09:59:17.678Z","uuid":"ac99fec7-2d7d-4f07-b178-e92e14442564","entityUuid":"4fa0c31a-bd3b-4ae0-8f56-639ae2212124","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Processed data leading to unpublishable results"}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T09:59:30.052Z","uuid":"28dd7a22-a6d6-4ef3-9a0b-e3367a47390e","entityUuid":"626a610e-34ac-40ca-8bf6-7926f580ae80","parentUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Processed data leading to published results"}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-03T09:59:30.052Z","text":null,"uuid":"7e392b97-f3f7-4d61-9d72-d1b4ab0bc971","entityUuid":"19f71935-c4fa-4085-98a6-82686d656526","questionType":"OptionsQuestion","parentUuid":"626a610e-34ac-40ca-8bf6-7926f580ae80","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T09:59:51.99Z","text":{"changed":true,"value":"Provide a DOI if possible."},"uuid":"506ccfdc-2bac-4d7e-af1b-b4c303471a12","expertUuids":{"changed":false},"entityUuid":"19f71935-c4fa-4085-98a6-82686d656526","questionType":"ValueQuestion","parentUuid":"626a610e-34ac-40ca-8bf6-7926f580ae80","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":true,"value":"Specify a link to the paper"},"valueType":{"changed":true,"value":"StringQuestionValueType"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T09:59:51.99Z","text":{"changed":false},"uuid":"a79212b7-ce77-4fa8-9192-7becbfc705b9","expertUuids":{"changed":false},"entityUuid":"19f71935-c4fa-4085-98a6-82686d656526","questionType":"ValueQuestion","parentUuid":"626a610e-34ac-40ca-8bf6-7926f580ae80","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"adc9133d-afcd-4616-9aea-db5f475898a2"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:00:41.211Z","text":{"changed":false},"uuid":"938a9eea-69ad-4150-be82-c61f7a820796","expertUuids":{"changed":false},"entityUuid":"3a8ed3fc-b1a6-4119-80ed-238804861734","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":true,"value":"adc9133d-afcd-4616-9aea-db5f475898a2"}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-03T10:05:59.407Z","text":null,"uuid":"ff97dc9d-4f3e-4b52-ab07-70661f734147","entityUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","questionType":"OptionsQuestion","parentUuid":"771279ea-3ffe-4d22-aeb4-8d656a77c25c","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:12:07.073Z","text":{"changed":false},"uuid":"3f2f45f6-8e6c-4a1a-be85-804bf1274fc0","expertUuids":{"changed":false},"entityUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","questionType":"OptionsQuestion","parentUuid":"771279ea-3ffe-4d22-aeb4-8d656a77c25c","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Why not?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T10:12:07.073Z","uuid":"7af9e6e8-9043-465e-a92b-613ed36cb24d","entityUuid":"deff3d55-a7bb-426e-94e7-8b6d46a27f8e","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T10:12:23.354Z","uuid":"b9eac1b7-6af9-44f0-9d43-60ef85776025","entityUuid":"deff3d55-a7bb-426e-94e7-8b6d46a27f8e","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"It is raw data that never needs to be reprocessed"}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T10:12:53.941Z","uuid":"05a6b90f-c89e-43ac-8c64-cd688c59f00f","entityUuid":"309ee279-cd5a-47dd-ad11-7b111d0ac1ff","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":[],"advice":null,"createdAt":"2022-02-03T10:14:36.528Z","uuid":"d16fcd42-5cc0-4de4-90a9-7a34a7fe2a84","entityUuid":"cf378a0e-9efe-4221-a7a7-c0631fd71c3e","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T10:14:54.612Z","uuid":"c93887c7-a0bf-44bf-afc5-02a0ba42bbee","entityUuid":"cf378a0e-9efe-4221-a7a7-c0631fd71c3e","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"It is intermediate data that is easily reproduced"}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T10:15:23.248Z","uuid":"1fc1ebd4-200c-4fcc-868d-61cfed7c023f","entityUuid":"f9bd9b58-c400-4a0f-b66f-0ce991e0e3e2","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T10:15:27.803Z","uuid":"744fed70-5475-4767-8713-3482e282d8e4","entityUuid":"f9bd9b58-c400-4a0f-b66f-0ce991e0e3e2","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"It was lost"}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T10:15:37.141Z","uuid":"d16c9489-791c-4a23-9ffa-e1437db3ea28","entityUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T10:15:47.543Z","uuid":"508d93fb-e7d1-4089-afcf-c041100f5f17","entityUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"There are other reasons"}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-03T10:15:47.543Z","text":null,"uuid":"4c3e9e85-ad76-4625-b367-012475609388","entityUuid":"c3f2eeb9-a9e7-46e7-a5df-8d9ca50ed8ce","questionType":"OptionsQuestion","parentUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:15:59.528Z","text":{"changed":false},"uuid":"7e9995a7-e71c-4291-a90d-e595f0889dd1","expertUuids":{"changed":false},"entityUuid":"c3f2eeb9-a9e7-46e7-a5df-8d9ca50ed8ce","questionType":"OptionsQuestion","parentUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"What other reasons?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:15:59.528Z","text":{"changed":false},"uuid":"9c516715-0b3b-44ef-b59f-749b2a67bbf0","expertUuids":{"changed":false},"entityUuid":"c3f2eeb9-a9e7-46e7-a5df-8d9ca50ed8ce","questionType":"ValueQuestion","parentUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":true,"value":"StringQuestionValueType"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:15:59.528Z","text":{"changed":false},"uuid":"0a68d3f9-dfd6-4385-b2ab-d379d8f1719c","expertUuids":{"changed":false},"entityUuid":"c3f2eeb9-a9e7-46e7-a5df-8d9ca50ed8ce","questionType":"ValueQuestion","parentUuid":"9af201fa-bf32-4e44-b44d-efea6f69d631","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":true,"value":"TextQuestionValueType"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Are you sure the data set would not be re-usable in another context? Or that it could be valuable to prevent others having to perform the same experiment and coming to the same negative results?"},"createdAt":"2022-02-03T10:20:33.539Z","uuid":"a301b4ee-c7fa-4bdc-9c49-43ed26335314","entityUuid":"309ee279-cd5a-47dd-ad11-7b111d0ac1ff","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"This data set only led to unpublishable results"}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Note that there are questions later specific to archival."},"createdAt":"2022-02-03T10:21:56.403Z","uuid":"a502aced-6bfb-451c-b96b-6e824865e977","entityUuid":"a8adc972-a2b6-4f5b-837b-20f83a685ed6","parentUuid":"82fc0a41-8be0-407c-b2f8-95bf5b366187","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":[],"createdAt":"2022-02-03T10:22:55.869Z","uuid":"7db6b646-8d49-4367-98eb-d9a636a55b12","url":"","entityUuid":"92c92ca3-f15d-4460-8c63-461f1e801196","parentUuid":"a063da1c-aaea-4e18-85ec-f560d833f292","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:31:41.854Z","uuid":"43a8c978-1bea-461d-a016-59c8d9a026cd","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/preserving"},"entityUuid":"92c92ca3-f15d-4460-8c63-461f1e801196","parentUuid":"a063da1c-aaea-4e18-85ec-f560d833f292","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Preserving"}},{"annotations":[],"createdAt":"2022-02-03T10:35:44.353Z","uuid":"8447abd6-daf8-4410-86ab-fd59f14ea30d","url":"","entityUuid":"e20ad7f1-602e-4e9c-be05-e69914501c91","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:35:47.737Z","uuid":"2a3602d2-7ad6-429c-bc37-48c7fc60c6be","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/preserving"},"entityUuid":"e20ad7f1-602e-4e9c-be05-e69914501c91","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Preserving"}},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:37:01.848Z","uuid":"630e71d3-4e9e-4aa3-a210-c9143aeb7f83","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/identifiers.html"},"entityUuid":"44e78b35-ed5e-4ac3-b6b0-66b272b4648e","parentUuid":"cf727a0a-78c4-45a7-aa9b-cf7650ae873a","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":false}},{"annotations":[],"createdAt":"2022-02-03T10:38:15.244Z","uuid":"4c4d4665-e16a-4612-b2a0-86a3dd4aad69","url":"","entityUuid":"d01dcf36-54ad-432d-9751-98abd2dbc2ab","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:38:19.164Z","uuid":"0a758185-6c19-4a73-a6e3-4f7ab331bad7","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/collecting"},"entityUuid":"d01dcf36-54ad-432d-9751-98abd2dbc2ab","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Collecting Data"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:38:52.169Z","text":{"changed":false},"uuid":"865fa3e5-f326-4615-b780-77db7d9db61b","expertUuids":{"changed":false},"entityUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","questionType":"ListQuestion","parentUuid":"d5b27482-b598-4b8c-b534-417d4ad27394","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":true,"value":["d01dcf36-54ad-432d-9751-98abd2dbc2ab","e20ad7f1-602e-4e9c-be05-e69914501c91"]},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2022-02-03T10:39:59.015Z","uuid":"9744accb-b6c6-4323-8892-8ff0442a6c29","url":"","entityUuid":"bdf3a93e-4413-42ad-8a33-c977e6a0c4f5","parentUuid":"d21fdb06-22bf-418e-aa40-dc5ef1485f56","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:40:03.272Z","uuid":"78cce41b-b659-4a80-aa7a-0d3d04d77566","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/identifiers.html"},"entityUuid":"bdf3a93e-4413-42ad-8a33-c977e6a0c4f5","parentUuid":"d21fdb06-22bf-418e-aa40-dc5ef1485f56","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Identifiers"}},{"annotations":[],"createdAt":"2022-02-03T10:40:31.108Z","uuid":"6b67ffcb-9607-4d9e-984e-18665351b786","url":"","entityUuid":"ae5e819c-7d9f-4f1d-9433-81c20171f86e","parentUuid":"3d89e23d-ff5c-45da-97a8-169ad8c39be6","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:40:36.733Z","uuid":"e4463d0d-c2d5-4b9e-ad99-62d767d38234","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/licensing.html"},"entityUuid":"ae5e819c-7d9f-4f1d-9433-81c20171f86e","parentUuid":"3d89e23d-ff5c-45da-97a8-169ad8c39be6","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Licensing"}},{"annotations":[],"createdAt":"2022-02-03T10:41:33.209Z","uuid":"75254bd3-d5cb-4854-a062-35195039db21","url":"","entityUuid":"f733a466-0a9f-44ce-a3e9-69573246be41","parentUuid":"d4e6a244-07fb-4573-b93f-c20a9409ac7c","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:41:36.699Z","uuid":"8ecf527c-00c7-46e2-9e67-e4c1c2e6d9f7","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/storage.html"},"entityUuid":"f733a466-0a9f-44ce-a3e9-69573246be41","parentUuid":"d4e6a244-07fb-4573-b93f-c20a9409ac7c","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Storage"}},{"annotations":[],"createdAt":"2022-02-03T10:42:13.694Z","uuid":"c678b982-dbc7-4f71-a7aa-fef7a6b91436","url":"","entityUuid":"a82f95f5-9f70-472a-acfb-613177cd8429","parentUuid":"3b3fbcc6-c405-4151-8dce-e11dbd46b1bd","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-03T10:45:36.707Z","uuid":"29928fab-d0b7-4bac-ad09-6968f4120a24","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/metadata_management.html#how-do-you-find-appropriate-standard-metadata-for-datasets-or-samples"},"entityUuid":"a82f95f5-9f70-472a-acfb-613177cd8429","parentUuid":"3b3fbcc6-c405-4151-8dce-e11dbd46b1bd","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Documentation and Metadata"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:53:56.854Z","text":{"changed":true,"value":"Will you publish the data set somewhere? Will it be findable for other people, even if not the whole world? What is not meant here is a paper about the interpretation of the data, but the data itself.\n\nNote that this does not necessarily mean that the data set becomes openly available, conditions for access and use may apply. "},"uuid":"56550a0f-8051-4439-bbcd-e36218e052a3","expertUuids":{"changed":false},"entityUuid":"a063da1c-aaea-4e18-85ec-f560d833f292","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-03T10:54:26.477Z","text":null,"uuid":"ad5920f8-06ae-435a-a30b-78f0dd4f82be","entityUuid":"7ffcfc57-b4ad-4638-ab19-11fe57b841a0","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:56:15.849Z","text":{"changed":false},"uuid":"feca6e2e-a1a0-4db8-b634-944eaa53aa6e","expertUuids":{"changed":false},"entityUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","questionType":"ListQuestion","parentUuid":"d5b27482-b598-4b8c-b534-417d4ad27394","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":true,"value":["b0949d09-d179-4491-9fb4-14b0deb9f862","205a886d-83d7-4359-ae63-7103e05357c3","3a8ed3fc-b1a6-4119-80ed-238804861734","cf727a0a-78c4-45a7-aa9b-cf7650ae873a","7ffcfc57-b4ad-4638-ab19-11fe57b841a0","a063da1c-aaea-4e18-85ec-f560d833f292","d4e6a244-07fb-4573-b93f-c20a9409ac7c","3b3fbcc6-c405-4151-8dce-e11dbd46b1bd","a1d76760-053c-4706-80a2-cfb6c6a061f3","cc95b399-7d8d-4232-bccf-686f78c91bff"]},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T10:59:18.803Z","text":{"changed":true,"value":"Archival is a form of preservation that does not make the data findable for anyone else. It is a very good idea to at least archive those datasets that will not be published.\n\nNote that details about archiving considerations will come in questions below."},"uuid":"1e08ace5-7f48-4b4d-8bfd-edd860d15124","expertUuids":{"changed":false},"entityUuid":"7ffcfc57-b4ad-4638-ab19-11fe57b841a0","questionType":"OptionsQuestion","parentUuid":"4e0c1edf-660c-4ebf-81f5-9fa959dead30","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Wil"},"requiredPhaseUuid":{"changed":false}},{"createdAt":"2022-02-03T11:04:38.667Z","uuid":"6e74c46d-a641-488e-bf6f-f76dbf594ddb","entityUuid":"a84cdefc-8c41-4949-9353-5916532ad50c","parentUuid":"d5b27482-b598-4b8c-b534-417d4ad27394","eventType":"DeleteQuestionEvent"},{"annotations":[],"advice":null,"createdAt":"2022-02-03T11:13:54.53Z","uuid":"8e17b4b0-bff3-4c36-bb9d-92a7e893e670","entityUuid":"f040fdff-e9d4-4777-a482-af584fd7b3ba","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T11:17:05.423Z","text":{"changed":false},"uuid":"3192444d-f8bd-422c-90eb-145cf546a700","expertUuids":{"changed":false},"entityUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","questionType":"OptionsQuestion","parentUuid":"771279ea-3ffe-4d22-aeb4-8d656a77c25c","eventType":"EditQuestionEvent","answerUuids":{"changed":true,"value":["deff3d55-a7bb-426e-94e7-8b6d46a27f8e","309ee279-cd5a-47dd-ad11-7b111d0ac1ff","cf378a0e-9efe-4221-a7a7-c0631fd71c3e","f9bd9b58-c400-4a0f-b66f-0ce991e0e3e2","f040fdff-e9d4-4777-a482-af584fd7b3ba","9af201fa-bf32-4e44-b44d-efea6f69d631"]},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T11:17:05.423Z","text":{"changed":false},"uuid":"b00dd5b6-317f-476c-9b1e-9fdf83d3d59e","expertUuids":{"changed":false},"entityUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","questionType":"OptionsQuestion","parentUuid":"771279ea-3ffe-4d22-aeb4-8d656a77c25c","eventType":"EditQuestionEvent","answerUuids":{"changed":true,"value":["deff3d55-a7bb-426e-94e7-8b6d46a27f8e","309ee279-cd5a-47dd-ad11-7b111d0ac1ff","cf378a0e-9efe-4221-a7a7-c0631fd71c3e","f040fdff-e9d4-4777-a482-af584fd7b3ba","f9bd9b58-c400-4a0f-b66f-0ce991e0e3e2","9af201fa-bf32-4e44-b44d-efea6f69d631"]},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-02-03T11:17:35.976Z","uuid":"8040fd7b-8d5e-4a0b-9a1c-2f00ff738294","entityUuid":"c0b6d52a-2fde-4e3f-835f-e49fffc67ccb","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-03T11:17:49.008Z","uuid":"0f7104d0-3a91-4238-9a45-db2154dd09d5","entityUuid":"c0b6d52a-2fde-4e3f-835f-e49fffc67ccb","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"It is too expensive"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-03T11:18:06.069Z","text":{"changed":false},"uuid":"0c208318-b995-47e8-992c-20ab864b3801","expertUuids":{"changed":false},"entityUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","questionType":"OptionsQuestion","parentUuid":"771279ea-3ffe-4d22-aeb4-8d656a77c25c","eventType":"EditQuestionEvent","answerUuids":{"changed":true,"value":["deff3d55-a7bb-426e-94e7-8b6d46a27f8e","309ee279-cd5a-47dd-ad11-7b111d0ac1ff","cf378a0e-9efe-4221-a7a7-c0631fd71c3e","f040fdff-e9d4-4777-a482-af584fd7b3ba","c0b6d52a-2fde-4e3f-835f-e49fffc67ccb","f9bd9b58-c400-4a0f-b66f-0ce991e0e3e2","9af201fa-bf32-4e44-b44d-efea6f69d631"]},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Are you sure? \n\nThere may be very different reasons to reuse a data set than you can think of! E.g. an interview recording can be used for voice analysis or for studying the acoustics of a room, which is not what the interviewer had in mind when it was made."},"createdAt":"2022-02-03T11:18:18.132Z","uuid":"9c159b95-e9c6-44b5-9822-8c482396db76","entityUuid":"f040fdff-e9d4-4777-a482-af584fd7b3ba","parentUuid":"2a34dbf7-3a9e-446e-9dfd-695903bd2a07","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"There is no value, nobody will ever reuse it"}}]', '2022-02-03 12:18:00.914364 +00:00', '00000000-0000-0000-0000-000000000000');
