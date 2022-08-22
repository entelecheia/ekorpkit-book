#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker build \
    --network=host --rm \
    --build-arg workspace_dir=$EKORPKIT_WORKSPACE_ROOT \
    --build-arg project_name=$EKORPKIT_PROJECT \
    . -t $EKORPKIT_DOCKER_IMAGE_NAME:$DATESTAMP

docker tag ${EKORPKIT_DOCKER_IMAGE_NAME}:${DATESTAMP} ${EKORPKIT_DOCKER_IMAGE_NAME}:latest
