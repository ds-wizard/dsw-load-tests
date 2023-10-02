import subprocess

from tools.grafana_template import create_target, create_dashboard

fast_targets_array = [
    create_target("GET /wizard-api/configs/bootstrap", "GET", "url = '/wizard-api/configs/bootstrap'"),
    create_target("GET /wizard-api/document-templates", "GET", "url = '/wizard-api/document-templates'"),
    create_target("GET /wizard-api/packages", "GET", "url = '/wizard-api/packages'"),
    create_target("GET /wizard-api/packages/suggestions", "GET", "url = '/wizard-api/packages/suggestions'"),
    create_target("GET /wizard-api/packages/<id>", "GET","url LIKE '/wizard-api/packages/%' AND url != '/wizard-api/packages/suggestions'"),
    create_target("GET /wizard-api/questionnaires/project-tags/suggestions", "GET","url = '/wizard-api/questionnaires/project-tags/suggestions'"),
    create_target("GET /wizard-api/usage", "GET","url = '/wizard-api/usage'"),
    create_target("GET /wizard-api/users", "GET","url LIKE '/wizard-api/users%'"),
]

slow_targets_array = [
    create_target("GET /wizard-api/document-templates/suggestions", "GET","url = '/wizard-api/document-templates/suggestions'"),
    create_target("GET /wizard-api/document-templates/<id>", "GET","url LIKE '/wizard-api/document-templates/%' AND url != '/wizard-api/document-templates/suggestions'"),
    create_target("GET /wizard-api/questionnaires", "GET", "url = '/wizard-api/questionnaires'"),
    create_target("GET /wizard-api/questionnaires/<id>", "GET", "url = '/wizard-api/questionnaires/8796f923-75f7-4ae2-b53a-cc18ee0ec31d'"),
    create_target("GET /wizard-api/questionnaires/<id>/documents", "GET", "url = '/wizard-api/questionnaires/8796f923-75f7-4ae2-b53a-cc18ee0ec31d/documents'"),
    create_target("GET /wizard-api/questionnaires/<id>/events", "GET", "url = '/wizard-api/questionnaires/8796f923-75f7-4ae2-b53a-cc18ee0ec31d/events'"),
    create_target("GET /wizard-api/questionnaires/<id>/reports", "GET", "url = '/wizard-api/questionnaires/8796f923-75f7-4ae2-b53a-cc18ee0ec31d/reports'"),
    create_target("GET /wizard-api/questionnaires/<id>/versions", "GET", "url = '/wizard-api/questionnaires/8796f923-75f7-4ae2-b53a-cc18ee0ec31d/versions'"),
    create_target("GET /wizard-api/questionnaire-importers/suggestions", "GET","url = '/wizard-api/questionnaire-importers/suggestions'"),
]

fast_targets = ','.join(fast_targets_array)
slow_targets = ','.join(slow_targets_array)

dashboard = create_dashboard(fast_targets, slow_targets)
subprocess.run("pbcopy", text=True, input=dashboard)
