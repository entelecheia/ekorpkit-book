#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker stop $LABELSTUDIO_DOCKER_CONTAINER_NAME
docker ps
