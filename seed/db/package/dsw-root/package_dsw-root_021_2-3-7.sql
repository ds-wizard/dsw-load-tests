INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.7', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.7', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.6', null, null, '[{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":null,"uuid":"41fb29c3-f4e6-4f35-a369-5821ab85d65d","entityUuid":"3782d32b-91b5-432f-8f93-92bb22868a22","questionType":"OptionsQuestion","parentUuid":"421e2d3e-c95c-4244-9465-de8f1cb8aeba","eventType":"AddQuestionEvent","title":"Did you get an ethical committee to make an ethical review on your project?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"90a8fa73-dafe-4bd0-9854-1ad75dfe4d81","entityUuid":"6480ac87-faaa-4b47-9a66-f338e95ace5a","parentUuid":"3782d32b-91b5-432f-8f93-92bb22868a22","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"0974790f-7eab-4e3f-827b-cfd773f41ef8","entityUuid":"04644b31-678c-45d5-807d-93d0d79f2221","parentUuid":"3782d32b-91b5-432f-8f93-92bb22868a22","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":"It is important for re-users to know what consent items you asked exactly from participants.","uuid":"a14c3afe-a4c3-4ea9-a397-3f9d0c740d6a","entityUuid":"d0e029ee-aee0-420f-bc6f-ad471410ad42","questionType":"OptionsQuestion","parentUuid":"73cd2dda-41ba-456b-9a4e-aa34c78f2fcf","eventType":"AddQuestionEvent","title":"Will the consent form be available for re-users?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"910e0dde-58bb-4376-99bd-57e097b6d839","entityUuid":"e4b4093e-9abd-40ce-bd9a-8720b2966017","parentUuid":"d0e029ee-aee0-420f-bc6f-ad471410ad42","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"87edc2b0-dc15-45d8-bc9c-5f850a15a2bb","entityUuid":"dce67815-b47b-4e92-a70e-b32735cf9e5b","parentUuid":"d0e029ee-aee0-420f-bc6f-ad471410ad42","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-11T13:54:52.898625Z","text":{"changed":true,"value":"It is important for re-users to know what consent items you asked exactly from participants.\n\nNote that the answers from participants is personal data that requires protection!"},"uuid":"c52620c4-28a8-4d10-9c12-aa8de144c334","expertUuids":{"changed":false},"entityUuid":"d0e029ee-aee0-420f-bc6f-ad471410ad42","questionType":"OptionsQuestion","parentUuid":"73cd2dda-41ba-456b-9a4e-aa34c78f2fcf","eventType":"EditQuestionEvent","answerUuids":{"changed":false},"referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"64147d03-32d7-4712-b381-6f50759154c7","url":"https://rdmkit.elixir-europe.org/human_data.html","entityUuid":"612660d5-dedc-4c4d-9176-06a887b47f14","parentUuid":"49c009cb-a38c-4836-9780-8a8b3dd1cbac","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Human Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"fe84ca1b-5fc8-487b-9a0b-afdccce6da8b","url":"https://rdmkit.elixir-europe.org/human_data.html#processing-and-analysing-human-research-data","entityUuid":"2a6ffbc9-6a07-4d5a-8df6-e7c44ce2356c","parentUuid":"d5990471-0618-42cd-92cb-bbbfd4f61532","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Human Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"501d0fea-9787-4fc9-985a-4ab3f4ee1d9f","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"86f7c739-cfdf-4b3a-a032-3bda9bbf6404","parentUuid":"59748a7b-f729-404d-babe-3147e2c6b247","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Note that it is very hard to make data anonymous, and GDPR requires that you regularly verify that it is still anonymous."},"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"c3dc05a3-4848-4305-9486-0dc52f673986","entityUuid":"ca0df149-cb95-404a-a925-0a1fc5052d1d","parentUuid":"d5990471-0618-42cd-92cb-bbbfd4f61532","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":{"changed":false},"advice":{"changed":true,"value":"Please note that GDPR law in Europe specifies that data is only anonymous as long as nobody in the world has enough information to re-identify the subject.\n\nFurthermore, GDPR requires that you regularly verify that it is still anonymous."},"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"afc444b1-29a0-4f33-8829-9f26c977f173","entityUuid":"44348fa8-fd12-49ea-ad7f-48ff88215829","parentUuid":"d5990471-0618-42cd-92cb-bbbfd4f61532","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":false},"label":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":null,"uuid":"947cf4c9-d458-41f2-bc50-77dbe9a837b8","entityUuid":"5d51a103-ec07-4c20-b269-f2f59f26d2cd","questionType":"ValueQuestion","parentUuid":"1653a04e-20e2-4929-9fd5-8c35402ac359","eventType":"AddQuestionEvent","title":"Who is the independent party that keeps the pseudonymization?","valueType":"TextQuestionValueType","requiredPhaseUuid":null},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-11T13:54:52.898625Z","text":{"changed":false},"uuid":"6334c713-3e10-4bad-9016-0534ba49aac7","expertUuids":{"changed":false},"entityUuid":"5d51a103-ec07-4c20-b269-f2f59f26d2cd","questionType":"ValueQuestion","parentUuid":"1653a04e-20e2-4929-9fd5-8c35402ac359","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":true,"value":"Who is the independent party that keeps the pseudonymization keys?"},"valueType":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"745f8ccc-a4cd-40be-84c3-3b386c937a94","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"00af9ed1-2627-45d7-89e8-63876fd92a2f","parentUuid":"6b3d62a5-1d4d-49e1-aaf1-0a8b398a7ac3","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"480ad988-5de8-46e4-8a29-a068ad6a8e55","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"68a9e378-e7ef-48bd-9e65-62937f7804d0","parentUuid":"a1d76760-053c-4706-80a2-cfb6c6a061f3","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"1a41271f-22f4-41b6-97af-fe6a1869798e","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"4302bc15-31f1-42c0-b921-183847404605","parentUuid":"cc95b399-7d8d-4232-bccf-686f78c91bff","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"d2034899-662b-4647-8915-f02ec67575eb","entityUuid":"bc82b138-9816-46dd-8ff8-cea2826a3ad4","parentUuid":"829dcda6-db8a-40ac-819a-92b9b52490f5","eventType":"AddChoiceEvent","label":"Data Protection Officer"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-11T13:54:52.898625Z","choiceUuids":{"changed":true,"value":["2c6ee59d-4dc9-4dcb-ac13-d969c317a117","fc789e2d-01ee-432d-82f9-1b659f58eaf8","618cb529-0c24-4762-a739-7983004d1b2b","627ab8dc-8026-498d-ba7a-3df122e29ede","bc82b138-9816-46dd-8ff8-cea2826a3ad4","3022098b-0e2c-4fad-9f28-cf2e1325521d","27dccf06-3b67-4c75-8888-6549e4da2d31","100daf28-b55e-4b04-8295-f2aa83d0c734","2085d67e-e144-4ec2-a788-1b26ac1cd7ab","2d433965-55e3-4540-aae4-f85639d4e4fc","cd2d1e0d-c5ad-4d0e-afa2-5ed143323cb7","3d166766-6511-407b-a3e9-9565628fe05a","c81c63b6-bec0-4e12-b9cd-247fa4338c1f","704ebc65-6932-4679-bbe5-f25c19843f0f","374b887f-dfd8-4763-b360-b2a8aa12051c","6dfde2b6-4234-47a0-b7da-ccb7412f8490","ce5476ed-5cc3-42ff-ac9d-d567f28cc2a6","e957ecd5-baa2-4a3c-aaf1-735d416e5e11"]},"text":{"changed":false},"uuid":"faec0748-9c7c-4f37-ad3e-7c2ac94bf560","expertUuids":{"changed":false},"entityUuid":"829dcda6-db8a-40ac-819a-92b9b52490f5","questionType":"MultiChoiceQuestion","parentUuid":"73d686bd-7939-412e-8631-502ee6d9ea7b","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"requiredPhaseUuid":{"changed":false}},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":"You need a DPIA whenever you deal with any personal data under the European GDPR, almost for any biomedical research.","uuid":"810ab96d-7e78-458c-a1ec-206dad8ec52a","entityUuid":"8915bd25-db22-4ed6-bcc8-b1bbdc52989e","questionType":"OptionsQuestion","parentUuid":"421e2d3e-c95c-4244-9465-de8f1cb8aeba","eventType":"AddQuestionEvent","title":"Do you need a Data Protection Impact Assessment?","requiredPhaseUuid":null},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"16b1e9c1-a6e3-4d77-a0b0-f677993e4330","entityUuid":"d0741ff3-370b-44e7-860d-00b1f01e6254","parentUuid":"8915bd25-db22-4ed6-bcc8-b1bbdc52989e","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"e8ed20eb-4dd9-4949-a146-982084c61afb","entityUuid":"c3914e43-cca1-4180-8960-228b7022bae6","parentUuid":"8915bd25-db22-4ed6-bcc8-b1bbdc52989e","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"7d650cf2-2e2d-4dce-8977-8ccaa228ef90","url":"https://rdmkit.elixir-europe.org/data_protection.html","entityUuid":"ba4eb06a-2d61-4755-bb51-8232b349d0a1","parentUuid":"8915bd25-db22-4ed6-bcc8-b1bbdc52989e","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Protection"},{"annotations":{"changed":false},"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"63262f32-e042-4fc0-bf3c-edef31e2d489","url":{"changed":false},"entityUuid":"df93fa41-88cb-451a-aa05-95a18cf02e73","parentUuid":"49c009cb-a38c-4836-9780-8a8b3dd1cbac","eventType":"EditReferenceEvent","referenceType":"URLReference","label":{"changed":true,"value":"RDMkit about Sensitive Data"}},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"e50da616-3fc7-42ac-8061-b6c560c39f22","url":"https://rdmkit.elixir-europe.org/data_protection.html","entityUuid":"42a7b822-5644-48f5-aa9a-9a9e3119a028","parentUuid":"49c009cb-a38c-4836-9780-8a8b3dd1cbac","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Data Protection"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"57d4f495-25a8-4a12-bad7-df8aacdc82f6","url":"https://rdmkit.elixir-europe.org/human_data.html#sharing-and-reusing-of-human-research-data","entityUuid":"ff3b29fc-fa24-4799-aa2c-29fabc5fc584","parentUuid":"55f03a4a-034b-422a-adf6-757416b7650a","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sharing Human Data"},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"cb5d1d29-df70-456b-8fe3-f365c22806a3","url":"https://rdmkit.elixir-europe.org/sensitive_data.html","entityUuid":"f22531ad-862e-48fa-a521-18e6998b1f7d","parentUuid":"019db0b3-9067-4134-8bfd-76db3cfc572a","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"RDMkit on Sensitive Data"},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":null,"uuid":"db2125b6-f6ba-48ea-8ad5-9fb54b817f13","entityUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","questionType":"OptionsQuestion","parentUuid":"421e2d3e-c95c-4244-9465-de8f1cb8aeba","eventType":"AddQuestionEvent","title":"Where do you keep any applicable restrictions on the usage of the data?","requiredPhaseUuid":null},{"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"7d4a9a26-8918-4704-a25e-54139be206cc","entityUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","parentUuid":"421e2d3e-c95c-4244-9465-de8f1cb8aeba","targetUuid":"6d18bfff-0f53-469b-934e-9806dda9d4fb","eventType":"MoveQuestionEvent"},{"annotations":{"changed":false},"advice":{"changed":false},"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"0cf7142d-024e-4ba2-93e8-64e7cc25fcf0","entityUuid":"6d18bfff-0f53-469b-934e-9806dda9d4fb","parentUuid":"8c962e6f-17ee-4b22-8ebb-9f06f779e3b3","eventType":"EditAnswerEvent","metricMeasures":{"changed":false},"followUpUuids":{"changed":true,"value":["1440afd6-d516-44f6-9c02-6abb13900b66","6226d7f2-565f-4991-94b3-c00be6aca20e","ed872b74-6bf7-4cba-8f36-4da4509e4a4f","15573266-7ddf-4c6b-962e-45691d34cf61","ae28a862-5020-44c2-8c78-3abc185b190f","de1b1a0f-58ea-4859-91b0-aa2b52090395","948b5fd8-c1bd-457d-8f81-ea2fd093f541","106df534-f590-416b-8e4a-846edbdc4325","91a7c75c-6f0e-4bae-b3f3-1890feaae9b2"]},"label":{"changed":false}},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"a811ee2b-9ca0-4d71-864a-1d34413ab279","entityUuid":"5458a4cb-b4b1-400f-bc7e-df45bbeb42af","parentUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","eventType":"AddAnswerEvent","metricMeasures":[],"label":"In a specialised registry or catalogue"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"f45fb7d7-6a50-448f-993d-32ee9c846505","entityUuid":"ff6ea5fb-c987-4391-bca7-c3c3e7a95964","parentUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Closely attached to the data in the data management system"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"49ad4615-b0f3-484a-9d97-79a6af408419","entityUuid":"eefe3d60-b037-488a-826c-871490357ffc","parentUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Stored in the same folder as the data"},{"annotations":[],"advice":null,"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"6bd26c64-a8fd-4517-94a0-126e0eb408e0","entityUuid":"0cdaa526-aa38-47d6-aa28-e8eaa8a3b127","parentUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","eventType":"AddAnswerEvent","metricMeasures":[],"label":"In another way"},{"annotations":[],"tagUuids":[],"createdAt":"2022-01-11T13:54:52.898625Z","text":null,"uuid":"02244801-9903-4432-a9e2-fc5b6f24c66d","entityUuid":"f9572d3c-c91f-4945-a56b-ccfb32750fe9","questionType":"ValueQuestion","parentUuid":"0cdaa526-aa38-47d6-aa28-e8eaa8a3b127","eventType":"AddQuestionEvent","title":"How will you store any applicable restrictions?","valueType":"TextQuestionValueType","requiredPhaseUuid":null},{"annotations":[],"createdAt":"2022-01-11T13:54:52.898625Z","uuid":"8f97fc42-c181-41fd-a80b-ab1e6c5b170d","url":"https://github.com/EBISPOT/DUO#readme","entityUuid":"35bcd464-9a68-49f3-8365-677fca660b17","parentUuid":"de1b1a0f-58ea-4859-91b0-aa2b52090395","eventType":"AddReferenceEvent","referenceType":"URLReference","label":"Data Use Ontology"}]', '2022-01-11 13:54:52.898625 +00:00', '00000000-0000-0000-0000-000000000000');
