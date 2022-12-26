INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.12', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.12', 13,'DSW Knowledge Model originating from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.11', null, null, '[{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T08:25:15.926Z","text":{"changed":false},"uuid":"213190e9-f3c7-426a-8a4f-23f7a3f37edd","expertUuids":{"changed":false},"entityUuid":"80d403f3-3f29-4f37-9040-b901ae9afa37","questionType":"OptionsQuestion","parentUuid":"e7324e1a-bfcb-4f2b-855a-35701dfb1ad5","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"How will access to the work space be controlled?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T08:26:54.742Z","text":{"changed":false},"uuid":"38bf5433-9013-4002-a405-f33c12816228","expertUuids":{"changed":false},"entityUuid":"a797cab9-0829-4787-a096-1b5cedc9147f","questionType":"ListQuestion","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"EditQuestionEvent","itemTemplateQuestionUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"List the data formats you will be using for interpretation and describe their structure"},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2022-02-15T09:31:38.883Z","uuid":"e18f3501-7294-4b5b-a332-1e1cb0d6de21","url":"","entityUuid":"ae540a5d-7f3c-4bf0-99a4-539d70a1dc6e","parentUuid":"a797cab9-0829-4787-a096-1b5cedc9147f","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:31:57.899Z","uuid":"27950a09-9868-45b5-bf40-bf5e5bfaf7b2","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/machine_actionability.html"},"entityUuid":"ae540a5d-7f3c-4bf0-99a4-539d70a1dc6e","parentUuid":"a797cab9-0829-4787-a096-1b5cedc9147f","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Machine Actionability"}},{"annotations":[],"createdAt":"2022-02-15T09:33:34.758Z","uuid":"a6671a38-8332-431b-b528-475676cfc9a3","url":"","entityUuid":"dddd6258-9d36-4d5c-9fe3-15369f825b04","parentUuid":"a797cab9-0829-4787-a096-1b5cedc9147f","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:33:49.392Z","uuid":"da78a875-b438-431f-8347-280667c8c63d","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/processing"},"entityUuid":"dddd6258-9d36-4d5c-9fe3-15369f825b04","parentUuid":"a797cab9-0829-4787-a096-1b5cedc9147f","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Processing"}},{"annotations":[],"createdAt":"2022-02-15T09:35:03.918Z","uuid":"10a45f40-62d1-4d0a-a769-090067856a49","url":"","entityUuid":"7aa33891-6563-4cd3-bb08-2f0d3b6f818a","parentUuid":"df36fb68-131c-4f31-a42b-684abf523bbc","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:35:23.719Z","uuid":"bac244af-da92-46ac-8c9f-eb7312243547","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/processing"},"entityUuid":"7aa33891-6563-4cd3-bb08-2f0d3b6f818a","parentUuid":"df36fb68-131c-4f31-a42b-684abf523bbc","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Processing"}},{"annotations":[],"createdAt":"2022-02-15T09:35:48.571Z","uuid":"e06dfc1b-07f1-4730-ba1c-adb4164d5a05","url":"","entityUuid":"23a14548-8397-490f-94e9-0d799c01e319","parentUuid":"df36fb68-131c-4f31-a42b-684abf523bbc","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:35:50.829Z","uuid":"708fe639-b566-4a59-84fa-72809d8efe7d","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/data_analysis.html"},"entityUuid":"23a14548-8397-490f-94e9-0d799c01e319","parentUuid":"df36fb68-131c-4f31-a42b-684abf523bbc","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Analysis"}},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:38:31.061Z","uuid":"cd101baf-c992-4910-bcd8-9931f33b393c","url":{"changed":false},"entityUuid":"1ba6f1d0-58ee-4722-8d18-da441e66d1ae","parentUuid":"4ba3304e-225c-4916-bbf7-754de381253c","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Data Analysis"}},{"annotations":[],"createdAt":"2022-02-15T09:46:47.774Z","uuid":"b1031d09-e877-47d0-9539-0e22bb9fa51f","url":"","entityUuid":"257d126a-611d-475d-a86d-752131f7c7e8","parentUuid":"decb7c9c-c6dc-4027-8c0e-18934c852ca6","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"createdAt":"2022-02-15T09:47:17.355Z","uuid":"3c4a8bc0-5994-4dd8-a02f-d7d6cbf0eea7","url":{"changed":true,"value":"https://rdmkit.elixir-europe.org/data_analysis.html#how-can-you-use-package-and-environment-management-systems"},"entityUuid":"257d126a-611d-475d-a86d-752131f7c7e8","parentUuid":"decb7c9c-c6dc-4027-8c0e-18934c852ca6","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit on Package management systems"}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T11:50:14.873Z","text":{"changed":true,"value":null},"uuid":"37ec5e67-4733-4876-a761-b05afe3108a1","expertUuids":{"changed":false},"entityUuid":"7733494c-fd84-4cd0-8463-5806f321f2c9","questionType":"OptionsQuestion","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"createdAt":"2022-02-15T11:50:14.873Z","uuid":"9cc669b2-6bfb-488d-99c8-3b0c295a361f","entityUuid":"7733494c-fd84-4cd0-8463-5806f321f2c9","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"DeleteQuestionEvent"},{"annotations":[],"tagUuids":[],"createdAt":"2022-02-15T11:51:38.478Z","text":null,"uuid":"35489224-4fd5-48c6-8dcb-5731a9012145","entityUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","questionType":"OptionsQuestion","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"AddQuestionEvent","title":"","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-02-15T11:52:30.5Z","uuid":"58eac545-8d6b-4e64-91bb-85513f029a7f","entityUuid":"e492d849-cd0b-4526-b876-afabbec36da3","parentUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-15T11:54:23.559Z","uuid":"81e76930-bf9e-4550-80ee-1a1f82cf63bb","entityUuid":"e492d849-cd0b-4526-b876-afabbec36da3","parentUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"No"}},{"annotations":[],"advice":null,"createdAt":"2022-02-15T11:54:27.959Z","uuid":"ce684a61-681c-4972-b8c4-ad328a1ff929","entityUuid":"2d35bf55-4123-4791-bd4d-ef39c57c9729","parentUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","eventType":"AddAnswerEvent","metricMeasures":[],"label":""},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-02-15T11:54:30.666Z","uuid":"8c5731a2-e834-426f-b582-f524a892f58f","entityUuid":"2d35bf55-4123-4791-bd4d-ef39c57c9729","parentUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":true,"value":"Yes"}},{"annotations":{"changed":false},"createdAt":"2022-02-15T11:54:38.102Z","text":{"changed":false},"uuid":"66ba80cf-4c38-4a49-bc5d-170ac09d5c32","questionUuids":{"changed":true,"value":["a797cab9-0829-4787-a096-1b5cedc9147f","109ed7ea-ef1d-4719-b2b4-eb4f7202c65c","f67e1539-5c7d-4df7-8259-e4f2edfa2685","d0306914-c253-472c-869f-19a60578c087","dbb6dcdf-dd2e-4829-8c03-16b2339ebd5a","d5d21ad3-720c-4a6a-bd5a-09f14b15666f","dc4f1dc7-4608-45f9-8503-aa05536f4d97","e1dba221-ad5a-474e-a2e3-9b4e472959fa","460803f2-cc23-4c57-b50e-c5177a3c11d5"]},"entityUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditChapterEvent","title":{"changed":false}},{"annotations":[],"createdAt":"2022-02-15T11:55:04.192Z","uuid":"7e3034ed-9125-49b7-a223-3317cbea263f","url":"","entityUuid":"5c29bf88-3b5e-4abd-aeaf-64c1a63dcc55","parentUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","eventType":"AddReferenceEvent","referenceType":"URLReference","label":""},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T11:58:00.995Z","text":{"changed":true,"value":"In some cases it is not practical to bring all data together:\n* It may be legally hard to collect the data in one place for analysis\n* It may be technically hard to transport data to a single place for analysis\n\nIn such cases, a Federated analysis approach may be applicable. Examples of such techniques are DataShield and the Personal Health Train. Secure multi-party computation may be useful too to prevent information leaking between parties."},"uuid":"91d113a3-bee6-441f-80d3-813e29b3d08e","expertUuids":{"changed":false},"entityUuid":"e1dba221-ad5a-474e-a2e3-9b4e472959fa","questionType":"OptionsQuestion","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will you be using a federated analysis approach?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"createdAt":"2022-02-15T11:59:54.011Z","text":{"changed":true,"value":"In the processing phase, the data will be undergoing the mostly automated steps for processing, before the analysis and interpretation.\n\nIn this chapter, many questions are focusing on the compute environment that is used to process the data and make it available for interpretation by project partners. Some of those questions (e.g. on workflow systems and data provenance) are also relevant for the work in the interpretation phase."},"uuid":"0c276bfa-b8bc-44db-a720-f6761ffa738b","questionUuids":{"changed":false},"entityUuid":"10a10ffd-bfe1-4c6b-bbb6-3dfb1e63a5d5","parentUuid":"6f6241d9-136c-4770-9d58-8a3f39607052","eventType":"EditChapterEvent","title":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T12:03:35.673Z","text":{"changed":true,"value":"If sources are using different semantic resources, you will need to plan time to find or make the right mappings."},"uuid":"7d25944e-045d-4e1d-8224-07f7459a0c91","expertUuids":{"changed":false},"entityUuid":"532ddc6a-3415-4df8-8fa1-002ee486fd42","questionType":"OptionsQuestion","parentUuid":"9cea7792-3e4c-42a6-b7e0-1abbdc9e2a5b","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-02-15T12:04:36.811Z","text":{"changed":true,"value":"If you are getting different types of data from different sources and want to use them together it is likely that you will need to match items and glue everything together. This can be done with traditional table database technology, but it is also possible to use Linked Data and RDF."},"uuid":"c05f2178-c471-4b00-8ec4-066c1341598a","expertUuids":{"changed":false},"entityUuid":"109ed7ea-ef1d-4719-b2b4-eb4f7202c65c","questionType":"OptionsQuestion","parentUuid":"83438863-0aa0-4458-b14b-2b2c0d4f811d","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":true,"value":"Will you be doing integration or linking of different data types?"},"requiredPhaseUuid":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Many standard database systems are available and often these are programmable in SQL."},"createdAt":"2022-02-15T12:05:36.524Z","uuid":"df2100ab-f0e5-4c3d-beba-2b3bbcf61997","entityUuid":"3c75eb37-03d7-414c-8bd3-0afa8170bfbc","parentUuid":"ff85db18-565c-4177-a397-9a8cf4c7b374","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":false}}]', '2022-02-15 21:01:15.102771 +00:00', '00000000-0000-0000-0000-000000000000');
