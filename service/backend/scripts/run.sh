#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -it --rm \
  --runtime=nvidia \
  --gpus $NVIDIA_VISIBLE_DEVICES \
  --ulimit memlock=-1 \
  --ulimit stack=67108864 \
  --env-file .env \
  --publish $EKORPKIT_BACKEND_HOST_PORT:$EKORPKIT_BACKEND_DOCKER_PORT \
  --volume $PWD:$EKORPKIT_BACKEND_APP_DIR \
  --volume $HOST_WORKSPACE_ROOT:$EKORPKIT_WORKSPACE_ROOT \
  --name $EKORPKIT_BACKEND_DOCKER_CONTAINER_NAME \
  $EKORPKIT_BACKEND_DOCKER_IMAGE_NAME:latest
  