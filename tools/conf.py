from tools.model import Test, TestVariant

T_20 = TestVariant(20)
T_40 = TestVariant(40)
T_80 = TestVariant(80)
T_160 = TestVariant(160)

TESTS = [
    Test('config_bootstrap', [T_20, T_40, T_80, T_160]),
    Test('document_template_detail', [T_20, T_40, T_80, T_160]),
    Test('document_template_list', [T_20, T_40, T_80, T_160]),
    Test('document_template_suggestions', [T_20, T_40, T_80, T_160]),
    Test('knowledge_model_package_detail', [T_20, T_40, T_80, T_160]),
    Test('knowledge_model_package_list', [T_20, T_40, T_80, T_160]),
    Test('knowledge_model_package_suggestions', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_comments', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_documents', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_events', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_questionnaire', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_report', [T_20]),
    Test('questionnaire_detail_settings', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_detail_versions', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_importer_suggestion', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_list', [T_20, T_40, T_80, T_160]),
    Test('questionnaire_project_tag_suggestion', [T_20, T_40, T_80, T_160]),
    Test('usage', [T_20, T_40, T_80, T_160]),
    Test('users_list', [T_20, T_40, T_80, T_160]),
    Test('users_suggestion', [T_20, T_40, T_80, T_160]),
]

WIZARD_USERNAME = 'support@ds-wizard.org'
WIZARD_PASSWORD = 'ML;UXpRMBuu*rP8JE7ejuDd'

