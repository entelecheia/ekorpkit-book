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
  --runtime=nvidia \
  --gpus $NVIDIA_VISIBLE_DEVICES \
  --network=$DOCKER_NETWORK \
  --ipc=$DOCKER_IPC \
  --ulimit memlock=-1 \
  --ulimit stack=67108864 \
  --env-file .env \
  --publish $JUPYTER_HOST_PORT:$JUPYTER_PORT \
  --publish $JUPYTERHUB_HOST_PORT:$JUPYTERHUB_PORT \
  --publish $DOCKER_SSH_PORT:22 \
  --volume $HOST_WORKSPACE_ROOT:$EKORPKIT_WORKSPACE_ROOT \
  --name $DOCKER_CONTAINER_NAME \
  $DOCKER_IMAGE_NAME $CMD
  