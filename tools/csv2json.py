import csv
import json
import pathlib
import sys

# Type,Name,Request Count,Failure Count,Median Response Time,Average Response Time,Min Response Time,Max Response Time,Average Content Size,Requests/s,Failures/s


def csv_row_to_json(csv_row: dict) -> dict:
    result = {
        'requestsCount': int(csv_row['Request Count']),
        'failureCount': int(csv_row['Failure Count']),
        'medianResponseTime': float(csv_row['Median Response Time']),
        'averageResponseTime': float(csv_row['Average Response Time']),
        'minResponseTime': float(csv_row['Min Response Time']),
        'maxResponseTime': float(csv_row['Max Response Time']),
        'averageContentSize': round(float(csv_row['Average Content Size'])),
        'requestsPerSecond': float(csv_row['Requests/s']),
        'failuresPerSecond': float(csv_row['Failures/s']),
        'responseTimeStats': {
            '50%': float(csv_row['50%']),
            '66%': float(csv_row['66%']),
            '75%': float(csv_row['75%']),
            '80%': float(csv_row['80%']),
            '90%': float(csv_row['90%']),
            '95%': float(csv_row['95%']),
            '98%': float(csv_row['98%']),
            '99%': float(csv_row['99%']),
            '99.9%': float(csv_row['99.9%']),
            '99.99%': float(csv_row['99.99%']),
            '100%': float(csv_row['100%']),
        },
    }
    if 'Type' in result:
        result['type'] = csv_row['Type']
    if 'Name' in result:
        result['name'] = csv_row['Name']
    return result


def csv_to_json(input_csv_file: str) -> dict:
    tests = []
    aggregated = {}
    with open(input_csv_file) as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            if row['Name'] == 'Aggregated':
                aggregated = csv_row_to_json(row)
            else:
                tests.append(csv_row_to_json(row))
    return {
        'tests': tests,
        'aggregated': aggregated,
    }


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print(f'Usage: {sys.argv[0]} [INPUT-CSV] [OUTPUT-JSON]')
        sys.exit(1)
    csv_filename = pathlib.Path(sys.argv[1])
    json_filename = pathlib.Path(sys.argv[2])
    if not csv_filename.exists() or not csv_filename.is_file():
        print(f'Cannot read file: {csv_filename}')
        sys.exit(1)
    result = csv_to_json(sys.argv[1])
    json_filename.write_text(
        data=json.dumps(result, indent=2),
        encoding='UTF-8',
    )
