#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker build \
    --network=host --rm \
    . -t $RUBRIX_DOCKER_IMAGE_NAME:latest
