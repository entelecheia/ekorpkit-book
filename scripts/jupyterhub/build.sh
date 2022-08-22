#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker build \
    --network=host --rm \
    --build-arg docker_image=$DOCKER_IMAGE_NAME \
    . -f server/jupyterhub/Dockerfile -t $JUPYTERHUB_IMAGE_NAME
