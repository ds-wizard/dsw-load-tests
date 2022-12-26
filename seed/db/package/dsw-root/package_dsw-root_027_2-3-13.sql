INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.13', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.13', 13,'DSW Knowledge Model originating from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

### 2.3.13

* Incorporating changes related to the Data Reuse workshop with RDMkit

### 2.3.12

* Incorporating changes related to the Data Analytics workshop with RDMkit

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.12', null, null, '[{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-03-08T12:22:12.882Z","text":{"changed":false},"uuid":"238550c2-8dee-4432-8a62-7f2b34963a8f","expertUuids":{"changed":false},"entityUuid":"467ff3ad-156c-4285-9efb-c91072b3544e","questionType":"OptionsQuestion","parentUuid":"7fc8d3c9-a2d5-4d47-9df4-56af48ca85e1","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Is extension of any consent for personal data needed?"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-03-08T12:32:28.231Z","text":null,"uuid":"198f6995-28fa-4bfb-8d4b-d43937967341","entityUuid":"685b203a-6173-46db-8eaf-9f584222e487","questionType":"OptionsQuestion","parentUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-03-08T12:33:05.75Z","uuid":"24be94c2-0d42-4f7b-a81b-ac6f9f89a377","entityUuid":"aa317b0d-72c4-43b2-8d66-7de926724925","parentUuid":"685b203a-6173-46db-8eaf-9f584222e487","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:33:56.189Z","uuid":"34077440-e520-4f03-8f72-2ff7b257ab04","entityUuid":"aa317b0d-72c4-43b2-8d66-7de926724925","parentUuid":"685b203a-6173-46db-8eaf-9f584222e487","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"No"}},{"annotations":[],"advice":null,"createdAt":"2022-03-08T12:34:00.808Z","uuid":"24e5eb6f-8df0-4cda-8946-1b299ef3fe6e","entityUuid":"3fe6d91b-3c48-49b5-93af-93b5fc86eaa7","parentUuid":"685b203a-6173-46db-8eaf-9f584222e487","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:34:04.499Z","uuid":"105ee581-e232-457f-b5ef-9c69d9d93825","entityUuid":"3fe6d91b-3c48-49b5-93af-93b5fc86eaa7","parentUuid":"685b203a-6173-46db-8eaf-9f584222e487","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes"}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:34:31.906Z","uuid":"c7a7a214-eaa8-4833-83a9-99b77dcf30a1","entityUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","parentUuid":"7e77ee02-ce26-4cd9-b07d-3eea03bc35c9","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":true,"value":["685b203a-6173-46db-8eaf-9f584222e487","44b0de3f-b580-4dd0-9e9a-24864c8fe9c8","530124a4-c7e9-4821-b26d-32a8ecd0d978"]},"label":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-03-08T12:34:40.857Z","text":{"changed":true,"value":"It is advisable to make the result of your efforts available in a standard repository. If you answer ''yes'' here, do not forget to mention the dataset under the chapter ''giving access to data''"},"uuid":"a0f58d5c-75da-4cb1-8de0-fe325eaa7286","expertUuids":{"changed":false},"entityUuid":"685b203a-6173-46db-8eaf-9f584222e487","questionType":"OptionsQuestion","parentUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will you be making the new computer-readable data available in a repository?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-03-08T12:37:18.524Z","text":{"changed":true,"value":"It is advisable to make the result of your efforts available in a standard repository. If you answer ''yes'' here, do not forget to mention the dataset under the chapter ''giving access to data''"},"uuid":"4e09cf73-6151-481b-bf74-a42dc289a443","expertUuids":{"changed":false},"entityUuid":"530124a4-c7e9-4821-b26d-32a8ecd0d978","questionType":"OptionsQuestion","parentUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"createdAt":"2022-03-08T12:37:20.94Z","uuid":"cb4e1d37-55a8-4924-aedc-9650afd9578d","entityUuid":"685b203a-6173-46db-8eaf-9f584222e487","parentUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","eventType":"DeleteQuestionEvent"},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:37:32.187Z","uuid":"3b1edd81-7785-4280-b2bf-acadb4c0df44","entityUuid":"4a3e9d91-240b-4eae-bc90-02c12a2a4744","parentUuid":"7e77ee02-ce26-4cd9-b07d-3eea03bc35c9","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":true,"value":["530124a4-c7e9-4821-b26d-32a8ecd0d978","44b0de3f-b580-4dd0-9e9a-24864c8fe9c8"]},"label":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:37:56.321Z","uuid":"119ce4be-50ae-4fa3-bfec-752edd2e6d8d","entityUuid":"dce00426-ea06-4aac-979e-ccefb9ba01f9","parentUuid":"530124a4-c7e9-4821-b26d-32a8ecd0d978","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes, through a standard repository"}},{"annotations":[],"advice":null,"createdAt":"2022-03-08T12:38:07.028Z","uuid":"8f3b64d3-faee-434e-977b-604e4e21c9dd","entityUuid":"790dbcb1-69fb-4aac-bffc-4b7dd8b24aaa","parentUuid":"530124a4-c7e9-4821-b26d-32a8ecd0d978","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-03-08T12:38:33.572Z","uuid":"09a588fc-f3e4-44f7-bea1-9f06268e1a45","entityUuid":"790dbcb1-69fb-4aac-bffc-4b7dd8b24aaa","parentUuid":"530124a4-c7e9-4821-b26d-32a8ecd0d978","eventType":"EditAnswerEvent","metricMeasures":{"changed":true,"value":[{"weight":1,"measure":0.5,"metricUuid":"0bafe0c2-a8f2-4c74-80c8-dbf3a5b8e9b7"}]},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes, through other means"}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"If the data is published in a standard repository, that repository will tell you which metadata standards to use."},"createdAt":"2022-03-08T12:39:25.509Z","uuid":"8d5b699f-ef31-41eb-867c-a71d1c6a198f","entityUuid":"69b0dc80-4b80-4fe6-b162-2a3eff9e133e","parentUuid":"44b0de3f-b580-4dd0-9e9a-24864c8fe9c8","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":false}}]', '2022-03-08 12:45:58.043647 +00:00', '00000000-0000-0000-0000-000000000000');
