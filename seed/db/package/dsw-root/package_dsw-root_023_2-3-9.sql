INSERT INTO public.package (id, name, organization_id, km_id, version, metamodel_version, description, readme, license, previous_package_id, fork_of_package_id, merge_checkpoint_package_id, events, created_at, app_uuid) VALUES ('dsw:root:2.3.9', 'Common DSW Knowledge Model', 'dsw', 'root', '2.3.9', 13,'DSW Knowledge Model originated from mindmap made by Rob Hooft', '# Common DSW Knowledge Model

Common DSW Knowledge Model deals with questions that a researcher should answer in order to create a Data Stewardship Plan, as well as other related questionnaire data. It originated from mindmap made by Rob Hooft.

## Changelog

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

* Initial version transformed from the previous DS-KM GitHub repository up to [ds-km@8442837](https://github.com/ds-wizard/ds-km/commit/8442837dbe3ff899b09e7d8d3fc1107e935a876f)', 'Apache-2.0', 'dsw:root:2.3.8', null, null, '[{"annotations":[],"advice":null,"createdAt":"2022-01-27T13:30:23.343511Z","uuid":"ed681b84-68b7-4678-b2fc-199c4f2b9cca","entityUuid":"0e1f21d5-68fc-4f42-a7c6-eb6e01a8e034","parentUuid":"26b2afa6-99e8-4337-b380-5642bc807ad8","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2022-01-27T13:30:23.343511Z","uuid":"1bef95f3-b7f6-4b66-aa77-c8084c87ef31","entityUuid":"a7aaba0a-2e27-4051-b3a2-03474efa0cd9","parentUuid":"26b2afa6-99e8-4337-b380-5642bc807ad8","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":[],"advice":null,"createdAt":"2022-01-27T13:30:23.343511Z","uuid":"58ff6000-8ad3-4678-8147-8030a4cd31dd","entityUuid":"51a6c4eb-bf33-4feb-9e89-9372ebb112c9","parentUuid":"7f55274c-a5f5-4f6a-94d8-531ea0077462","eventType":"AddAnswerEvent","metricMeasures":[],"label":"No"},{"annotations":[],"advice":null,"createdAt":"2022-01-27T13:30:23.343511Z","uuid":"4bb3693b-a474-42b2-8b0f-89d1ce974df9","entityUuid":"862e3a05-e5d7-4004-b6d9-79fc20192311","parentUuid":"7f55274c-a5f5-4f6a-94d8-531ea0077462","eventType":"AddAnswerEvent","metricMeasures":[],"label":"Yes"},{"annotations":{"changed":false},"tagUuids":{"changed":false},"createdAt":"2022-01-27T13:30:23.343511Z","text":{"changed":false},"uuid":"c81b3b3d-6c9c-4e35-8943-f01e155447b4","expertUuids":{"changed":false},"entityUuid":"c730b703-82cf-4a0e-a1dc-d910d73d1ed9","questionType":"ValueQuestion","parentUuid":"87964502-4401-45e5-9084-d6c84a417acf","eventType":"EditQuestionEvent","referenceUuids":{"changed":false},"title":{"changed":false},"valueType":{"changed":true,"value":"TextQuestionValueType"},"requiredPhaseUuid":{"changed":false}}]', '2022-01-27 13:30:23.343511 +00:00', '00000000-0000-0000-0000-000000000000');
