from tools.model import Test, TestVariant

T_20 = TestVariant(20)
T_40 = TestVariant(40)
T_80 = TestVariant(80)
T_120 = TestVariant(160)

TESTS = [
    Test('config-bootstrap', [T_20, T_40, T_80, T_120]),
    Test('document-template-detail', [T_20, T_40, T_80, T_120]),
    Test('document-template-list', [T_20, T_40, T_80, T_120]),
    Test('document-template-suggestions', [T_20, T_40, T_80, T_120]),
    Test('package-detail', [T_20, T_40, T_80, T_120]),
    Test('package-list', [T_20, T_40, T_80, T_120]),
    Test('package-suggestions', [T_20, T_40, T_80, T_120]),
    Test('questionnaire-detail', [T_20]),
    Test('questionnaire-detail-documents', [T_20, T_40, T_80, T_120]),
    Test('questionnaire-detail-events', [T_20]),
    Test('questionnaire-detail-report', [T_20]),
    Test('questionnaire-detail-versions', [T_20, T_40, T_80, T_120]),
    Test('questionnaire-importer-suggestion', [T_20, T_40, T_80, T_120]),
    Test('questionnaire-list', [T_20, T_40]),
    Test('questionnaire-project-tag-suggestion', [T_20, T_40, T_80, T_120]),
    Test('usage', [T_20, T_40, T_80, T_120]),
    Test('users-list', [T_20, T_40, T_80, T_120]),
    Test('users-suggestion', [T_20, T_40, T_80, T_120]),
]

WIZARD_USERNAME = 'support@ds-wizard.org'
WIZARD_PASSWORD = 'ML;UXpRMBuu*rP8JE7ejuDd'

