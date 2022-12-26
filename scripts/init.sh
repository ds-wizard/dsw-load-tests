#!/bin/sh

# Init docker-compose file
SERVER_IMAGE="${SERVER_IMAGE:-docker.ds-wizard.org/wizard-server:develop}"

DOCKER_COMPOSE_FILE=dsw/docker-compose.yml

cp -r dsw/docker-compose.template.yml $DOCKER_COMPOSE_FILE
sed -i.bak "s#{SERVER_IMAGE}#$SERVER_IMAGE#" $DOCKER_COMPOSE_FILE && rm $DOCKER_COMPOSE_FILE".bak"

echo "\nInitialized docker-compose.yml:"
cat $DOCKER_COMPOSE_FILE
