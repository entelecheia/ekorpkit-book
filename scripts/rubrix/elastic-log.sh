#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker logs $RUBRIX_ELASTIC_DOCKER_CONTAINER_NAME
