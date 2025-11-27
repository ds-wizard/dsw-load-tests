import subprocess

import tests.questionnaire_detail as questionnaire_detail
import tests.questionnaire_detail_comments as questionnaire_detail_comments
import tests.questionnaire_detail_documents as questionnaire_detail_documents
import tests.questionnaire_detail_events as questionnaire_detail_events
import tests.questionnaire_detail_questionnaire as questionnaire_detail_questionnaire
import tests.questionnaire_detail_report as questionnaire_detail_report
import tests.questionnaire_detail_settings as questionnaire_detail_settings
import tests.questionnaire_detail_versions as questionnaire_detail_versions
from tools.grafana_template import create_target, create_dashboard


def create_targets_array(user):
    return [
        create_target(user, "GET /wizard-api/configs/bootstrap", "GET", "url = '/wizard-api/configs/bootstrap'"),
        create_target(user, "GET /wizard-api/document-templates", "GET", "url = '/wizard-api/document-templates'"),
        create_target(user, "GET /wizard-api/document-templates/suggestions", "GET","url = '/wizard-api/document-templates/suggestions'"),
        create_target(user, "GET /wizard-api/document-templates/<id>", "GET","url LIKE '/wizard-api/document-templates/%' AND url != '/wizard-api/document-templates/suggestions'"),
        create_target(user, "GET /wizard-api/knowledge-model-packages", "GET", "url = '/wizard-api/knowledge-model-packages'"),
        create_target(user, "GET /wizard-api/knowledge-model-packages/suggestions", "GET", "url = '/wizard-api/knowledge-model-packages/suggestions'"),
        create_target(user, "GET /wizard-api/knowledge-model-packages/<id>", "GET","url LIKE '/wizard-api/knowledge-model-packages/%' AND url != '/wizard-api/knowledge-model-packages/suggestions'"),
        create_target(user, "GET /wizard-api/questionnaires", "GET", "url = '/wizard-api/questionnaires'"),
        create_target(user, "GET /wizard-api/questionnaires/<id>", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/comments", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_comments.QTN_UUID}?path={questionnaire_detail_comments.PATH}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/documents", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_documents.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/events", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_events.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/questionnaire", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_questionnaire.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/report", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_report.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/settings", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_settings.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/<id>/versions", "GET",f"""url = '/wizard-api/questionnaires/{questionnaire_detail_versions.QTN_UUID}'"""),
        create_target(user, "GET /wizard-api/questionnaires/project-tags/suggestions", "GET","url = '/wizard-api/questionnaires/project-tags/suggestions'"),
        create_target(user, "GET /wizard-api/questionnaire-importers/suggestions", "GET","url = '/wizard-api/questionnaire-importers/suggestions'"),
        create_target(user, "GET /wizard-api/usage", "GET", "url = '/wizard-api/usage'"),
        create_target(user, "GET /wizard-api/users", "GET", "url LIKE '/wizard-api/users%' AND url != '/wizard-api/users/suggestions'"),
        create_target(user, "GET /wizard-api/users/suggestions", "GET","url = '/wizard-api/users/suggestions'"),
    ]


panels = [
    (20, ','.join(create_targets_array(20))),
    (40, ','.join(create_targets_array(40))),
    (80, ','.join(create_targets_array(80))),
    (160, ','.join(create_targets_array(160))),
]

dashboard = create_dashboard(panels)
subprocess.run("pbcopy", text=True, input=dashboard)
