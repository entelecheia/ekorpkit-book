#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker stop $RUBRIX_DOCKER_CONTAINER_NAME
