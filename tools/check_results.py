import json
import pathlib
import sys


NAMES = {
    'requestsCount': 'Requests Count',
    "failureCount": 'Failures Count',
    "medianResponseTime": 'Response Time (Median)',
    "averageResponseTime": 'Response Time (Average)',
    "minResponseTime": 'Response Time (Min)',
    "maxResponseTime": 'Response Time (Max)',
    "averageContentSize": 'Content Size (Average)',
    "requestsPerSecond": 'Requests per Second',
    "failuresPerSecond": 'Failures per Second',
}


def _check_value_range(key, value, expectation: dict, errors: list):
    min_val = expectation['min']
    max_val = expectation['max']
    if max_val is not None and value > max_val:
        errors.append(f'⬆ Value too high for "{NAMES.get(key, key)}": '
                      f'{value} (max: {max_val})')
    elif min_val is not None and value < min_val:
        errors.append(f'⬇ Value too low for "{NAMES.get(key, key)}": '
                      f'{value} (min: {min_val})')


def check_value(key, value, expectation: dict, errors: list):
    if expectation['type'] == 'range':
        _check_value_range(key, value, expectation, errors)
    else:
        errors.append(f'Unknown expectation: {expectation["type"]}')


def check_errors_aggregated(results: dict, expectations: dict) -> list[str]:
    res = results['aggregated']  # type: dict
    exps = expectations.get('aggregated', None)  # type: dict
    if exps is None:
        return []
    errors = []
    for key, exp in exps.items():
        if exp is None:
            continue
        if key not in res.keys():
            errors.append(f'Results do not contain "{NAMES.get(key, key)}"')
        else:
            check_value(key, res[key], exp, errors)
    return errors


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print(f'Usage: {sys.argv[0]} [RESULTS-JSON] [EXPECTATIONS-JSON]')
        sys.exit(1)
    results_path = pathlib.Path(sys.argv[1])
    expectations_path = pathlib.Path(sys.argv[2])
    if not results_path.exists() or not results_path.is_file():
        print(f'Not a file: {results_path}')
        sys.exit(1)
    if not expectations_path.exists() or not expectations_path.is_file():
        print(f'Not a file: {expectations_path}')
        sys.exit(1)
    errors = check_errors_aggregated(
        results=json.loads(results_path.read_text(encoding='UTF-8')),
        expectations=json.loads(expectations_path.read_text(encoding='UTF-8')),
    )
    if len(errors) == 0:
        print('✓ No errors found, all expectations met!')
    else:
        print(f'{len(errors)} found:')
        for error in errors:
            print(f'- {error}')
        sys.exit(1)
