#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker push $DOCKER_IMAGE_NAME
