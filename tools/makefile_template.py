from tools.conf import TESTS
from tools.model import Test


def create_content():
    s = create_report_all(TESTS)
    s += "\n"
    s += create_report_fast(TESTS)
    s += "\n"
    s += create_report_base_task()
    s += "\n"
    for test in TESTS:
        s += create_report_for_test(test)
    s += "\n"
    s += create_locust_gui()
    return s


def create_report_base_task():
    return """.PHONY: report.base
report.base:
	@locust -f tests/$(TEST).py \\
          --host=https://researchers.load.ds-wizard.org/wizard-api \\
          --users=$(USERS) \\
          --spawn-rate=$(USERS) \\
          --run-time=20s \\
          --only-summary \\
          --headless \\
          --csv=csv/$(TEST)_$(USERS) \\
          --html=html/$(TEST)_$(USERS).html"""


def create_report_all(tests: [Test]):
    s = '.PHONE: report.all\n'
    s += 'report.all:\n'
    for test in tests:
        s += f'\t$(MAKE) report.{test.name}.all\n'
        s += f'\tsleep 5\n'
    return s


def create_report_fast(tests: [Test]):
    s = '.PHONE: report.fast\n'
    s += 'report.fast:\n'
    for test in tests:
        s += f'\t$(MAKE) report.{test.name}.20\n'
        s += f'\tsleep 5\n'
    return s


def create_report_for_test(test: Test):
    s = f'\n'
    s += '########################################################################################################################\n'
    s += f'\n'
    s += f'.PHONE: report.{test.name}.all\n'
    s += f'report.{test.name}.all:\n'
    for test_variant in test.variants:
        s += f'\t$(MAKE) report.{test.name}.{test_variant.users}\n'
        s += f'\tsleep 5\n'
    for test_variant in test.variants:
        s += '\n'
        s += '# ----------------------------------------------------------------------------------------------------------------------\n'
        s += '\n'
        s += f'.PHONY: report.{test.name}.{test_variant.users}\n'
        s += f'report.{test.name}.{test_variant.users}:\n'
        s += f'\t$(MAKE) report.base TEST={test.name} USERS={test_variant.users}\n'
    return s


def create_locust_gui():
    return """########################################################################################################################

.PHONY: locust.gui
locust.gui:
	@locust -f tests/project_list/locustfile.py \\
          --host=https://researchers.load.ds-wizard.org/wizard-api \\
          --users=5 \\
          --spawn-rate=1 \\
          --run-time=30s
"""
