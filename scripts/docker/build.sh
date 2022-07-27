#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker build \
    --network=host --rm \
    --build-arg workspace_dir=$EKORPKIT_WORKSPACE_ROOT \
    --build-arg project_name=$EKORPKIT_PROJECT \
    . -t $DOCKER_IMAGE_NAME
