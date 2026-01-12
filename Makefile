.PHONE: report.all
report.all:
	$(MAKE) report.config_bootstrap.all
	sleep 5
	$(MAKE) report.document_template_detail.all
	sleep 5
	$(MAKE) report.document_template_list.all
	sleep 5
	$(MAKE) report.document_template_suggestions.all
	sleep 5
	$(MAKE) report.knowledge_model_package_detail.all
	sleep 5
	$(MAKE) report.knowledge_model_package_list.all
	sleep 5
	$(MAKE) report.knowledge_model_package_suggestions.all
	sleep 5
	$(MAKE) report.project_detail.all
	sleep 5
	$(MAKE) report.project_detail_comments.all
	sleep 5
	$(MAKE) report.project_detail_documents.all
	sleep 5
	$(MAKE) report.project_detail_events.all
	sleep 5
	$(MAKE) report.project_detail_questionnaire.all
	sleep 5
	$(MAKE) report.project_detail_report.all
	sleep 5
	$(MAKE) report.project_detail_settings.all
	sleep 5
	$(MAKE) report.project_detail_versions.all
	sleep 5
	$(MAKE) report.project_importer_suggestion.all
	sleep 5
	$(MAKE) report.project_list.all
	sleep 5
	$(MAKE) report.project_tag_suggestion.all
	sleep 5
	$(MAKE) report.usage.all
	sleep 5
	$(MAKE) report.users_list.all
	sleep 5
	$(MAKE) report.users_suggestion.all
	sleep 5

.PHONE: report.fast
report.fast:
	$(MAKE) report.config_bootstrap.20
	sleep 5
	$(MAKE) report.document_template_detail.20
	sleep 5
	$(MAKE) report.document_template_list.20
	sleep 5
	$(MAKE) report.document_template_suggestions.20
	sleep 5
	$(MAKE) report.knowledge_model_package_detail.20
	sleep 5
	$(MAKE) report.knowledge_model_package_list.20
	sleep 5
	$(MAKE) report.knowledge_model_package_suggestions.20
	sleep 5
	$(MAKE) report.project_detail.20
	sleep 5
	$(MAKE) report.project_detail_comments.20
	sleep 5
	$(MAKE) report.project_detail_documents.20
	sleep 5
	$(MAKE) report.project_detail_events.20
	sleep 5
	$(MAKE) report.project_detail_questionnaire.20
	sleep 5
	$(MAKE) report.project_detail_report.20
	sleep 5
	$(MAKE) report.project_detail_settings.20
	sleep 5
	$(MAKE) report.project_detail_versions.20
	sleep 5
	$(MAKE) report.project_importer_suggestion.20
	sleep 5
	$(MAKE) report.project_list.20
	sleep 5
	$(MAKE) report.project_tag_suggestion.20
	sleep 5
	$(MAKE) report.usage.20
	sleep 5
	$(MAKE) report.users_list.20
	sleep 5
	$(MAKE) report.users_suggestion.20
	sleep 5

.PHONY: report.base
report.base:
	@locust -f tests/$(TEST).py \
          --host=https://researchers.load.ds-wizard.org/wizard-api \
          --users=$(USERS) \
          --spawn-rate=$(USERS) \
          --run-time=20s \
          --only-summary \
          --headless \
          --csv=csv/$(TEST)_$(USERS) \
          --html=html/$(TEST)_$(USERS).html

########################################################################################################################

.PHONE: report.config_bootstrap.all
report.config_bootstrap.all:
	$(MAKE) report.config_bootstrap.20
	sleep 5
	$(MAKE) report.config_bootstrap.40
	sleep 5
	$(MAKE) report.config_bootstrap.80
	sleep 5
	$(MAKE) report.config_bootstrap.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config_bootstrap.20
report.config_bootstrap.20:
	$(MAKE) report.base TEST=config_bootstrap USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config_bootstrap.40
report.config_bootstrap.40:
	$(MAKE) report.base TEST=config_bootstrap USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config_bootstrap.80
report.config_bootstrap.80:
	$(MAKE) report.base TEST=config_bootstrap USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.config_bootstrap.160
report.config_bootstrap.160:
	$(MAKE) report.base TEST=config_bootstrap USERS=160

########################################################################################################################

.PHONE: report.document_template_detail.all
report.document_template_detail.all:
	$(MAKE) report.document_template_detail.20
	sleep 5
	$(MAKE) report.document_template_detail.40
	sleep 5
	$(MAKE) report.document_template_detail.80
	sleep 5
	$(MAKE) report.document_template_detail.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_detail.20
report.document_template_detail.20:
	$(MAKE) report.base TEST=document_template_detail USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_detail.40
report.document_template_detail.40:
	$(MAKE) report.base TEST=document_template_detail USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_detail.80
report.document_template_detail.80:
	$(MAKE) report.base TEST=document_template_detail USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_detail.160
report.document_template_detail.160:
	$(MAKE) report.base TEST=document_template_detail USERS=160

########################################################################################################################

.PHONE: report.document_template_list.all
report.document_template_list.all:
	$(MAKE) report.document_template_list.20
	sleep 5
	$(MAKE) report.document_template_list.40
	sleep 5
	$(MAKE) report.document_template_list.80
	sleep 5
	$(MAKE) report.document_template_list.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_list.20
report.document_template_list.20:
	$(MAKE) report.base TEST=document_template_list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_list.40
report.document_template_list.40:
	$(MAKE) report.base TEST=document_template_list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_list.80
report.document_template_list.80:
	$(MAKE) report.base TEST=document_template_list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_list.160
report.document_template_list.160:
	$(MAKE) report.base TEST=document_template_list USERS=160

########################################################################################################################

.PHONE: report.document_template_suggestions.all
report.document_template_suggestions.all:
	$(MAKE) report.document_template_suggestions.20
	sleep 5
	$(MAKE) report.document_template_suggestions.40
	sleep 5
	$(MAKE) report.document_template_suggestions.80
	sleep 5
	$(MAKE) report.document_template_suggestions.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_suggestions.20
report.document_template_suggestions.20:
	$(MAKE) report.base TEST=document_template_suggestions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_suggestions.40
report.document_template_suggestions.40:
	$(MAKE) report.base TEST=document_template_suggestions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_suggestions.80
report.document_template_suggestions.80:
	$(MAKE) report.base TEST=document_template_suggestions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.document_template_suggestions.160
report.document_template_suggestions.160:
	$(MAKE) report.base TEST=document_template_suggestions USERS=160

########################################################################################################################

.PHONE: report.knowledge_model_package_detail.all
report.knowledge_model_package_detail.all:
	$(MAKE) report.knowledge_model_package_detail.20
	sleep 5
	$(MAKE) report.knowledge_model_package_detail.40
	sleep 5
	$(MAKE) report.knowledge_model_package_detail.80
	sleep 5
	$(MAKE) report.knowledge_model_package_detail.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_detail.20
report.knowledge_model_package_detail.20:
	$(MAKE) report.base TEST=knowledge_model_package_detail USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_detail.40
report.knowledge_model_package_detail.40:
	$(MAKE) report.base TEST=knowledge_model_package_detail USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_detail.80
report.knowledge_model_package_detail.80:
	$(MAKE) report.base TEST=knowledge_model_package_detail USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_detail.160
report.knowledge_model_package_detail.160:
	$(MAKE) report.base TEST=knowledge_model_package_detail USERS=160

########################################################################################################################

.PHONE: report.knowledge_model_package_list.all
report.knowledge_model_package_list.all:
	$(MAKE) report.knowledge_model_package_list.20
	sleep 5
	$(MAKE) report.knowledge_model_package_list.40
	sleep 5
	$(MAKE) report.knowledge_model_package_list.80
	sleep 5
	$(MAKE) report.knowledge_model_package_list.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_list.20
report.knowledge_model_package_list.20:
	$(MAKE) report.base TEST=knowledge_model_package_list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_list.40
report.knowledge_model_package_list.40:
	$(MAKE) report.base TEST=knowledge_model_package_list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_list.80
report.knowledge_model_package_list.80:
	$(MAKE) report.base TEST=knowledge_model_package_list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_list.160
report.knowledge_model_package_list.160:
	$(MAKE) report.base TEST=knowledge_model_package_list USERS=160

########################################################################################################################

.PHONE: report.knowledge_model_package_suggestions.all
report.knowledge_model_package_suggestions.all:
	$(MAKE) report.knowledge_model_package_suggestions.20
	sleep 5
	$(MAKE) report.knowledge_model_package_suggestions.40
	sleep 5
	$(MAKE) report.knowledge_model_package_suggestions.80
	sleep 5
	$(MAKE) report.knowledge_model_package_suggestions.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_suggestions.20
report.knowledge_model_package_suggestions.20:
	$(MAKE) report.base TEST=knowledge_model_package_suggestions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_suggestions.40
report.knowledge_model_package_suggestions.40:
	$(MAKE) report.base TEST=knowledge_model_package_suggestions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_suggestions.80
report.knowledge_model_package_suggestions.80:
	$(MAKE) report.base TEST=knowledge_model_package_suggestions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.knowledge_model_package_suggestions.160
report.knowledge_model_package_suggestions.160:
	$(MAKE) report.base TEST=knowledge_model_package_suggestions USERS=160

########################################################################################################################

.PHONE: report.project_detail.all
report.project_detail.all:
	$(MAKE) report.project_detail.20
	sleep 5
	$(MAKE) report.project_detail.40
	sleep 5
	$(MAKE) report.project_detail.80
	sleep 5
	$(MAKE) report.project_detail.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail.20
report.project_detail.20:
	$(MAKE) report.base TEST=project_detail USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail.40
report.project_detail.40:
	$(MAKE) report.base TEST=project_detail USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail.80
report.project_detail.80:
	$(MAKE) report.base TEST=project_detail USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail.160
report.project_detail.160:
	$(MAKE) report.base TEST=project_detail USERS=160

########################################################################################################################

.PHONE: report.project_detail_comments.all
report.project_detail_comments.all:
	$(MAKE) report.project_detail_comments.20
	sleep 5
	$(MAKE) report.project_detail_comments.40
	sleep 5
	$(MAKE) report.project_detail_comments.80
	sleep 5
	$(MAKE) report.project_detail_comments.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_comments.20
report.project_detail_comments.20:
	$(MAKE) report.base TEST=project_detail_comments USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_comments.40
report.project_detail_comments.40:
	$(MAKE) report.base TEST=project_detail_comments USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_comments.80
report.project_detail_comments.80:
	$(MAKE) report.base TEST=project_detail_comments USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_comments.160
report.project_detail_comments.160:
	$(MAKE) report.base TEST=project_detail_comments USERS=160

########################################################################################################################

.PHONE: report.project_detail_documents.all
report.project_detail_documents.all:
	$(MAKE) report.project_detail_documents.20
	sleep 5
	$(MAKE) report.project_detail_documents.40
	sleep 5
	$(MAKE) report.project_detail_documents.80
	sleep 5
	$(MAKE) report.project_detail_documents.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_documents.20
report.project_detail_documents.20:
	$(MAKE) report.base TEST=project_detail_documents USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_documents.40
report.project_detail_documents.40:
	$(MAKE) report.base TEST=project_detail_documents USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_documents.80
report.project_detail_documents.80:
	$(MAKE) report.base TEST=project_detail_documents USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_documents.160
report.project_detail_documents.160:
	$(MAKE) report.base TEST=project_detail_documents USERS=160

########################################################################################################################

.PHONE: report.project_detail_events.all
report.project_detail_events.all:
	$(MAKE) report.project_detail_events.20
	sleep 5
	$(MAKE) report.project_detail_events.40
	sleep 5
	$(MAKE) report.project_detail_events.80
	sleep 5
	$(MAKE) report.project_detail_events.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_events.20
report.project_detail_events.20:
	$(MAKE) report.base TEST=project_detail_events USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_events.40
report.project_detail_events.40:
	$(MAKE) report.base TEST=project_detail_events USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_events.80
report.project_detail_events.80:
	$(MAKE) report.base TEST=project_detail_events USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_events.160
report.project_detail_events.160:
	$(MAKE) report.base TEST=project_detail_events USERS=160

########################################################################################################################

.PHONE: report.project_detail_questionnaire.all
report.project_detail_questionnaire.all:
	$(MAKE) report.project_detail_questionnaire.20
	sleep 5
	$(MAKE) report.project_detail_questionnaire.40
	sleep 5
	$(MAKE) report.project_detail_questionnaire.80
	sleep 5
	$(MAKE) report.project_detail_questionnaire.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_questionnaire.20
report.project_detail_questionnaire.20:
	$(MAKE) report.base TEST=project_detail_questionnaire USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_questionnaire.40
report.project_detail_questionnaire.40:
	$(MAKE) report.base TEST=project_detail_questionnaire USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_questionnaire.80
report.project_detail_questionnaire.80:
	$(MAKE) report.base TEST=project_detail_questionnaire USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_questionnaire.160
report.project_detail_questionnaire.160:
	$(MAKE) report.base TEST=project_detail_questionnaire USERS=160

########################################################################################################################

.PHONE: report.project_detail_report.all
report.project_detail_report.all:
	$(MAKE) report.project_detail_report.20
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_report.20
report.project_detail_report.20:
	$(MAKE) report.base TEST=project_detail_report USERS=20

########################################################################################################################

.PHONE: report.project_detail_settings.all
report.project_detail_settings.all:
	$(MAKE) report.project_detail_settings.20
	sleep 5
	$(MAKE) report.project_detail_settings.40
	sleep 5
	$(MAKE) report.project_detail_settings.80
	sleep 5
	$(MAKE) report.project_detail_settings.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_settings.20
report.project_detail_settings.20:
	$(MAKE) report.base TEST=project_detail_settings USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_settings.40
report.project_detail_settings.40:
	$(MAKE) report.base TEST=project_detail_settings USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_settings.80
report.project_detail_settings.80:
	$(MAKE) report.base TEST=project_detail_settings USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_settings.160
report.project_detail_settings.160:
	$(MAKE) report.base TEST=project_detail_settings USERS=160

########################################################################################################################

.PHONE: report.project_detail_versions.all
report.project_detail_versions.all:
	$(MAKE) report.project_detail_versions.20
	sleep 5
	$(MAKE) report.project_detail_versions.40
	sleep 5
	$(MAKE) report.project_detail_versions.80
	sleep 5
	$(MAKE) report.project_detail_versions.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_versions.20
report.project_detail_versions.20:
	$(MAKE) report.base TEST=project_detail_versions USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_versions.40
report.project_detail_versions.40:
	$(MAKE) report.base TEST=project_detail_versions USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_versions.80
report.project_detail_versions.80:
	$(MAKE) report.base TEST=project_detail_versions USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_detail_versions.160
report.project_detail_versions.160:
	$(MAKE) report.base TEST=project_detail_versions USERS=160

########################################################################################################################

.PHONE: report.project_importer_suggestion.all
report.project_importer_suggestion.all:
	$(MAKE) report.project_importer_suggestion.20
	sleep 5
	$(MAKE) report.project_importer_suggestion.40
	sleep 5
	$(MAKE) report.project_importer_suggestion.80
	sleep 5
	$(MAKE) report.project_importer_suggestion.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_importer_suggestion.20
report.project_importer_suggestion.20:
	$(MAKE) report.base TEST=project_importer_suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_importer_suggestion.40
report.project_importer_suggestion.40:
	$(MAKE) report.base TEST=project_importer_suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_importer_suggestion.80
report.project_importer_suggestion.80:
	$(MAKE) report.base TEST=project_importer_suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_importer_suggestion.160
report.project_importer_suggestion.160:
	$(MAKE) report.base TEST=project_importer_suggestion USERS=160

########################################################################################################################

.PHONE: report.project_list.all
report.project_list.all:
	$(MAKE) report.project_list.20
	sleep 5
	$(MAKE) report.project_list.40
	sleep 5
	$(MAKE) report.project_list.80
	sleep 5
	$(MAKE) report.project_list.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_list.20
report.project_list.20:
	$(MAKE) report.base TEST=project_list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_list.40
report.project_list.40:
	$(MAKE) report.base TEST=project_list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_list.80
report.project_list.80:
	$(MAKE) report.base TEST=project_list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_list.160
report.project_list.160:
	$(MAKE) report.base TEST=project_list USERS=160

########################################################################################################################

.PHONE: report.project_tag_suggestion.all
report.project_tag_suggestion.all:
	$(MAKE) report.project_tag_suggestion.20
	sleep 5
	$(MAKE) report.project_tag_suggestion.40
	sleep 5
	$(MAKE) report.project_tag_suggestion.80
	sleep 5
	$(MAKE) report.project_tag_suggestion.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_tag_suggestion.20
report.project_tag_suggestion.20:
	$(MAKE) report.base TEST=project_tag_suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_tag_suggestion.40
report.project_tag_suggestion.40:
	$(MAKE) report.base TEST=project_tag_suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_tag_suggestion.80
report.project_tag_suggestion.80:
	$(MAKE) report.base TEST=project_tag_suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.project_tag_suggestion.160
report.project_tag_suggestion.160:
	$(MAKE) report.base TEST=project_tag_suggestion USERS=160

########################################################################################################################

.PHONE: report.usage.all
report.usage.all:
	$(MAKE) report.usage.20
	sleep 5
	$(MAKE) report.usage.40
	sleep 5
	$(MAKE) report.usage.80
	sleep 5
	$(MAKE) report.usage.160
	sleep 5

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

.PHONE: report.users_list.all
report.users_list.all:
	$(MAKE) report.users_list.20
	sleep 5
	$(MAKE) report.users_list.40
	sleep 5
	$(MAKE) report.users_list.80
	sleep 5
	$(MAKE) report.users_list.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_list.20
report.users_list.20:
	$(MAKE) report.base TEST=users_list USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_list.40
report.users_list.40:
	$(MAKE) report.base TEST=users_list USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_list.80
report.users_list.80:
	$(MAKE) report.base TEST=users_list USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_list.160
report.users_list.160:
	$(MAKE) report.base TEST=users_list USERS=160

########################################################################################################################

.PHONE: report.users_suggestion.all
report.users_suggestion.all:
	$(MAKE) report.users_suggestion.20
	sleep 5
	$(MAKE) report.users_suggestion.40
	sleep 5
	$(MAKE) report.users_suggestion.80
	sleep 5
	$(MAKE) report.users_suggestion.160
	sleep 5

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_suggestion.20
report.users_suggestion.20:
	$(MAKE) report.base TEST=users_suggestion USERS=20

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_suggestion.40
report.users_suggestion.40:
	$(MAKE) report.base TEST=users_suggestion USERS=40

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_suggestion.80
report.users_suggestion.80:
	$(MAKE) report.base TEST=users_suggestion USERS=80

# ----------------------------------------------------------------------------------------------------------------------

.PHONY: report.users_suggestion.160
report.users_suggestion.160:
	$(MAKE) report.base TEST=users_suggestion USERS=160

########################################################################################################################

.PHONY: locust.gui
locust.gui:
	@locust -f tests/questionnaire_list/locustfile.py \
          --host=https://researchers.load.ds-wizard.org/wizard-api \
          --users=5 \
          --spawn-rate=1 \
          --run-time=30s
