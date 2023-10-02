.PHONE: report.all
report.all:
	$(MAKE) report.config-bootstrap.all
	$(MAKE) report.document-template-detail.all
	$(MAKE) report.document-template-list.all
	$(MAKE) report.document-template-suggestions.all
	$(MAKE) report.package-detail.all
	$(MAKE) report.package-list.all
	$(MAKE) report.package-suggestions.all
	$(MAKE) report.questionnaire-detail.all
	$(MAKE) report.questionnaire-detail-documents.all
	$(MAKE) report.questionnaire-detail-events.all
	$(MAKE) report.questionnaire-detail-report.all
	$(MAKE) report.questionnaire-detail-versions.all
	$(MAKE) report.questionnaire-importer-suggestion.all
	$(MAKE) report.questionnaire-list.all
	$(MAKE) report.questionnaire-project-tag-suggestion.all
	$(MAKE) report.usage.all
	$(MAKE) report.users-list.all
	$(MAKE) report.users-suggestion.all

.PHONE: report.fast
report.fast:
	$(MAKE) report.config-bootstrap.20
	$(MAKE) report.document-template-detail.20
	$(MAKE) report.document-template-list.20
	$(MAKE) report.document-template-suggestions.20
	$(MAKE) report.package-detail.20
	$(MAKE) report.package-list.20
	$(MAKE) report.package-suggestions.20
	$(MAKE) report.questionnaire-detail.20
	$(MAKE) report.questionnaire-detail-documents.20
	$(MAKE) report.questionnaire-detail-events.20
	$(MAKE) report.questionnaire-detail-report.20
	$(MAKE) report.questionnaire-detail-versions.20
	$(MAKE) report.questionnaire-importer-suggestion.20
	$(MAKE) report.questionnaire-list.20
	$(MAKE) report.questionnaire-project-tag-suggestion.20
	$(MAKE) report.usage.20
	$(MAKE) report.users-list.20
	$(MAKE) report.users-suggestion.20

.PHONY: report.base
report.base:
	@locust -f tests/$(TEST).py \
          --host=https://researchers.load.ds-wizard.org/wizard-api \
          --users=$(USERS) \
          --spawn-rate=$(USERS) \
          --run-time=20s \
          --only-summary \
          --headless \
          --csv=csv/$(TEST)-$(USERS) \
          --html=html/$(TEST)-$(USERS).html

########################################################################################################################

.PHONE: report.config-bootstrap.all
report.config-bootstrap.all:
	$(MAKE) report.config-bootstrap.20
	$(MAKE) report.config-bootstrap.40
	$(MAKE) report.config-bootstrap.80
	$(MAKE) report.config-bootstrap.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config-bootstrap.20
report.config-bootstrap.20:
	$(MAKE) report.base TEST=config-bootstrap USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config-bootstrap.40
report.config-bootstrap.40:
	$(MAKE) report.base TEST=config-bootstrap USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config-bootstrap.80
report.config-bootstrap.80:
	$(MAKE) report.base TEST=config-bootstrap USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config-bootstrap.160
report.config-bootstrap.160:
	$(MAKE) report.base TEST=config-bootstrap USERS=160

########################################################################################################################

.PHONE: report.document-template-detail.all
report.document-template-detail.all:
	$(MAKE) report.document-template-detail.20
	$(MAKE) report.document-template-detail.40
	$(MAKE) report.document-template-detail.80
	$(MAKE) report.document-template-detail.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-detail.20
report.document-template-detail.20:
	$(MAKE) report.base TEST=document-template-detail USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-detail.40
report.document-template-detail.40:
	$(MAKE) report.base TEST=document-template-detail USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-detail.80
report.document-template-detail.80:
	$(MAKE) report.base TEST=document-template-detail USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-detail.160
report.document-template-detail.160:
	$(MAKE) report.base TEST=document-template-detail USERS=160

########################################################################################################################

.PHONE: report.document-template-list.all
report.document-template-list.all:
	$(MAKE) report.document-template-list.20
	$(MAKE) report.document-template-list.40
	$(MAKE) report.document-template-list.80
	$(MAKE) report.document-template-list.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-list.20
report.document-template-list.20:
	$(MAKE) report.base TEST=document-template-list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-list.40
report.document-template-list.40:
	$(MAKE) report.base TEST=document-template-list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-list.80
report.document-template-list.80:
	$(MAKE) report.base TEST=document-template-list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-list.160
report.document-template-list.160:
	$(MAKE) report.base TEST=document-template-list USERS=160

########################################################################################################################

.PHONE: report.document-template-suggestions.all
report.document-template-suggestions.all:
	$(MAKE) report.document-template-suggestions.20
	$(MAKE) report.document-template-suggestions.40
	$(MAKE) report.document-template-suggestions.80
	$(MAKE) report.document-template-suggestions.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-suggestions.20
report.document-template-suggestions.20:
	$(MAKE) report.base TEST=document-template-suggestions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-suggestions.40
report.document-template-suggestions.40:
	$(MAKE) report.base TEST=document-template-suggestions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-suggestions.80
report.document-template-suggestions.80:
	$(MAKE) report.base TEST=document-template-suggestions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document-template-suggestions.160
report.document-template-suggestions.160:
	$(MAKE) report.base TEST=document-template-suggestions USERS=160

########################################################################################################################

.PHONE: report.package-detail.all
report.package-detail.all:
	$(MAKE) report.package-detail.20
	$(MAKE) report.package-detail.40
	$(MAKE) report.package-detail.80
	$(MAKE) report.package-detail.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-detail.20
report.package-detail.20:
	$(MAKE) report.base TEST=package-detail USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-detail.40
report.package-detail.40:
	$(MAKE) report.base TEST=package-detail USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-detail.80
report.package-detail.80:
	$(MAKE) report.base TEST=package-detail USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-detail.160
report.package-detail.160:
	$(MAKE) report.base TEST=package-detail USERS=160

########################################################################################################################

.PHONE: report.package-list.all
report.package-list.all:
	$(MAKE) report.package-list.20
	$(MAKE) report.package-list.40
	$(MAKE) report.package-list.80
	$(MAKE) report.package-list.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-list.20
report.package-list.20:
	$(MAKE) report.base TEST=package-list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-list.40
report.package-list.40:
	$(MAKE) report.base TEST=package-list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-list.80
report.package-list.80:
	$(MAKE) report.base TEST=package-list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-list.160
report.package-list.160:
	$(MAKE) report.base TEST=package-list USERS=160

########################################################################################################################

.PHONE: report.package-suggestions.all
report.package-suggestions.all:
	$(MAKE) report.package-suggestions.20
	$(MAKE) report.package-suggestions.40
	$(MAKE) report.package-suggestions.80
	$(MAKE) report.package-suggestions.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-suggestions.20
report.package-suggestions.20:
	$(MAKE) report.base TEST=package-suggestions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-suggestions.40
report.package-suggestions.40:
	$(MAKE) report.base TEST=package-suggestions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-suggestions.80
report.package-suggestions.80:
	$(MAKE) report.base TEST=package-suggestions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.package-suggestions.160
report.package-suggestions.160:
	$(MAKE) report.base TEST=package-suggestions USERS=160

########################################################################################################################

.PHONE: report.questionnaire-detail.all
report.questionnaire-detail.all:
	$(MAKE) report.questionnaire-detail.20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail.20
report.questionnaire-detail.20:
	$(MAKE) report.base TEST=questionnaire-detail USERS=20

########################################################################################################################

.PHONE: report.questionnaire-detail-documents.all
report.questionnaire-detail-documents.all:
	$(MAKE) report.questionnaire-detail-documents.20
	$(MAKE) report.questionnaire-detail-documents.40
	$(MAKE) report.questionnaire-detail-documents.80
	$(MAKE) report.questionnaire-detail-documents.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-documents.20
report.questionnaire-detail-documents.20:
	$(MAKE) report.base TEST=questionnaire-detail-documents USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-documents.40
report.questionnaire-detail-documents.40:
	$(MAKE) report.base TEST=questionnaire-detail-documents USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-documents.80
report.questionnaire-detail-documents.80:
	$(MAKE) report.base TEST=questionnaire-detail-documents USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-documents.160
report.questionnaire-detail-documents.160:
	$(MAKE) report.base TEST=questionnaire-detail-documents USERS=160

########################################################################################################################

.PHONE: report.questionnaire-detail-events.all
report.questionnaire-detail-events.all:
	$(MAKE) report.questionnaire-detail-events.20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-events.20
report.questionnaire-detail-events.20:
	$(MAKE) report.base TEST=questionnaire-detail-events USERS=20

########################################################################################################################

.PHONE: report.questionnaire-detail-report.all
report.questionnaire-detail-report.all:
	$(MAKE) report.questionnaire-detail-report.20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-report.20
report.questionnaire-detail-report.20:
	$(MAKE) report.base TEST=questionnaire-detail-report USERS=20

########################################################################################################################

.PHONE: report.questionnaire-detail-versions.all
report.questionnaire-detail-versions.all:
	$(MAKE) report.questionnaire-detail-versions.20
	$(MAKE) report.questionnaire-detail-versions.40
	$(MAKE) report.questionnaire-detail-versions.80
	$(MAKE) report.questionnaire-detail-versions.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-versions.20
report.questionnaire-detail-versions.20:
	$(MAKE) report.base TEST=questionnaire-detail-versions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-versions.40
report.questionnaire-detail-versions.40:
	$(MAKE) report.base TEST=questionnaire-detail-versions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-versions.80
report.questionnaire-detail-versions.80:
	$(MAKE) report.base TEST=questionnaire-detail-versions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-detail-versions.160
report.questionnaire-detail-versions.160:
	$(MAKE) report.base TEST=questionnaire-detail-versions USERS=160

########################################################################################################################

.PHONE: report.questionnaire-importer-suggestion.all
report.questionnaire-importer-suggestion.all:
	$(MAKE) report.questionnaire-importer-suggestion.20
	$(MAKE) report.questionnaire-importer-suggestion.40
	$(MAKE) report.questionnaire-importer-suggestion.80
	$(MAKE) report.questionnaire-importer-suggestion.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-importer-suggestion.20
report.questionnaire-importer-suggestion.20:
	$(MAKE) report.base TEST=questionnaire-importer-suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-importer-suggestion.40
report.questionnaire-importer-suggestion.40:
	$(MAKE) report.base TEST=questionnaire-importer-suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-importer-suggestion.80
report.questionnaire-importer-suggestion.80:
	$(MAKE) report.base TEST=questionnaire-importer-suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-importer-suggestion.160
report.questionnaire-importer-suggestion.160:
	$(MAKE) report.base TEST=questionnaire-importer-suggestion USERS=160

########################################################################################################################

.PHONE: report.questionnaire-list.all
report.questionnaire-list.all:
	$(MAKE) report.questionnaire-list.20
	$(MAKE) report.questionnaire-list.40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-list.20
report.questionnaire-list.20:
	$(MAKE) report.base TEST=questionnaire-list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-list.40
report.questionnaire-list.40:
	$(MAKE) report.base TEST=questionnaire-list USERS=40

########################################################################################################################

.PHONE: report.questionnaire-project-tag-suggestion.all
report.questionnaire-project-tag-suggestion.all:
	$(MAKE) report.questionnaire-project-tag-suggestion.20
	$(MAKE) report.questionnaire-project-tag-suggestion.40
	$(MAKE) report.questionnaire-project-tag-suggestion.80
	$(MAKE) report.questionnaire-project-tag-suggestion.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-project-tag-suggestion.20
report.questionnaire-project-tag-suggestion.20:
	$(MAKE) report.base TEST=questionnaire-project-tag-suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-project-tag-suggestion.40
report.questionnaire-project-tag-suggestion.40:
	$(MAKE) report.base TEST=questionnaire-project-tag-suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-project-tag-suggestion.80
report.questionnaire-project-tag-suggestion.80:
	$(MAKE) report.base TEST=questionnaire-project-tag-suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.questionnaire-project-tag-suggestion.160
report.questionnaire-project-tag-suggestion.160:
	$(MAKE) report.base TEST=questionnaire-project-tag-suggestion USERS=160

########################################################################################################################

.PHONE: report.usage.all
report.usage.all:
	$(MAKE) report.usage.20
	$(MAKE) report.usage.40
	$(MAKE) report.usage.80
	$(MAKE) report.usage.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.usage.20
report.usage.20:
	$(MAKE) report.base TEST=usage USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.usage.40
report.usage.40:
	$(MAKE) report.base TEST=usage USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.usage.80
report.usage.80:
	$(MAKE) report.base TEST=usage USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.usage.160
report.usage.160:
	$(MAKE) report.base TEST=usage USERS=160

########################################################################################################################

.PHONE: report.users-list.all
report.users-list.all:
	$(MAKE) report.users-list.20
	$(MAKE) report.users-list.40
	$(MAKE) report.users-list.80
	$(MAKE) report.users-list.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-list.20
report.users-list.20:
	$(MAKE) report.base TEST=users-list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-list.40
report.users-list.40:
	$(MAKE) report.base TEST=users-list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-list.80
report.users-list.80:
	$(MAKE) report.base TEST=users-list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-list.160
report.users-list.160:
	$(MAKE) report.base TEST=users-list USERS=160

########################################################################################################################

.PHONE: report.users-suggestion.all
report.users-suggestion.all:
	$(MAKE) report.users-suggestion.20
	$(MAKE) report.users-suggestion.40
	$(MAKE) report.users-suggestion.80
	$(MAKE) report.users-suggestion.160

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-suggestion.20
report.users-suggestion.20:
	$(MAKE) report.base TEST=users-suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-suggestion.40
report.users-suggestion.40:
	$(MAKE) report.base TEST=users-suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-suggestion.80
report.users-suggestion.80:
	$(MAKE) report.base TEST=users-suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users-suggestion.160
report.users-suggestion.160:
	$(MAKE) report.base TEST=users-suggestion USERS=160

########################################################################################################################

.PHONY: locust.gui
open:
	@locust -f tests/questionnaire-list/locustfile.py \
          --host=https://researchers.load.ds-wizard.org/wizard-api \
          --users=5 \
          --spawn-rate=1 \
          --run-time=30s
