#!/bin/sh

set -e

cd dsw
docker-compose pull -q
docker-compose up -d
