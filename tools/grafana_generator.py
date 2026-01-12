import subprocess

import tests.project_detail as project_detail
import tests.project_detail_comments as project_detail_comments
import tests.project_detail_documents as project_detail_documents
import tests.project_detail_events as project_detail_events
import tests.project_detail_questionnaire as project_detail_questionnaire
import tests.project_detail_report as project_detail_report
import tests.project_detail_settings as project_detail_settings
import tests.project_detail_versions as project_detail_versions
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
        create_target(user, "GET /wizard-api/projects", "GET", "url = '/wizard-api/projects'"),
        create_target(user, "GET /wizard-api/projects/<id>", "GET",f"""url = '/wizard-api/projects/{project_detail.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/comments", "GET",f"""url = '/wizard-api/projects/{project_detail_comments.PROJECT_UUID}?path={project_detail_comments.PATH}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/documents", "GET",f"""url = '/wizard-api/projects/{project_detail_documents.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/events", "GET",f"""url = '/wizard-api/projects/{project_detail_events.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/questionnaire", "GET",f"""url = '/wizard-api/projects/{project_detail_questionnaire.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/report", "GET",f"""url = '/wizard-api/projects/{project_detail_report.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/settings", "GET",f"""url = '/wizard-api/projects/{project_detail_settings.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/<id>/versions", "GET",f"""url = '/wizard-api/projects/{project_detail_versions.PROJECT_UUID}'"""),
        create_target(user, "GET /wizard-api/projects/project-tags/suggestions", "GET","url = '/wizard-api/projects/project-tags/suggestions'"),
        create_target(user, "GET /wizard-api/project-importers/suggestions", "GET","url = '/wizard-api/project-importers/suggestions'"),
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
