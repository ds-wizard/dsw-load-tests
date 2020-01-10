# DSW Load Tests

[![License](https://img.shields.io/badge/license-Apache%202-blue.svg)](LICENSE.md)

Load test suite for testing the performance of DSW Server based on Locust

## Installation

The project requires `python3`. Then all the dependencies can be installed with:

```bash
$ make install
```

## Configuration

Copy example configuration (`configuration.py.example`) and rename it to `configuration.py`. Fill necessary fields there.

## Usage

The tests are run against local instance of DSW which is created using docker-compose. To simply create instance of dsw, run tests and then clean it, run:

```bash
$ make test
```

