#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker build \
    --network=host --rm \
    --build-arg app_dir=$EKORPKIT_BACKEND_APP_DIR \
    . -t $EKORPKIT_BACKEND_DOCKER_IMAGE_NAME:$DATESTAMP

docker tag ${EKORPKIT_BACKEND_DOCKER_IMAGE_NAME}:${DATESTAMP} ${EKORPKIT_BACKEND_DOCKER_IMAGE_NAME}:latest
