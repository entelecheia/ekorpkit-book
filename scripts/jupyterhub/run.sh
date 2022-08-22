#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

CMD=${1:-/bin/bash}

if [ "$HOST_WORKSPACE_ROOT" == "" ]; then
  HOST_WORKSPACE_ROOT=${HOME}${EKORPKIT_WORKSPACE_ROOT}
  echo "HOST_WORKSPACE_ROOT is empty, using: $HOST_WORKSPACE_ROOT"
fi

docker run -it --rm \
  --privileged \
  --runtime=nvidia \
  --gpus $NVIDIA_VISIBLE_DEVICES \
  --ipc=$DOCKER_IPC \
  --ulimit memlock=-1 \
  --ulimit stack=67108864 \
  --env-file .env \
  --publish $JUPYTERHUB_HOST_PORT:$JUPYTERHUB_PORT \
  --volume $HOST_WORKSPACE_ROOT:$EKORPKIT_WORKSPACE_ROOT \
  --name $JUPYTERHUB_CONTAINER_NAME \
  $JUPYTERHUB_IMAGE_NAME $CMD
  