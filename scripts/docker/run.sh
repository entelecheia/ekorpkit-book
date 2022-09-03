#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

CMD=${1:-/bin/zsh}

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
  --publish $RUBRIX_HOST_PORT:6900 \
  --publish $DOCKER_SSH_PORT:22 \
  --volume $HOST_HF_HOME:/root/.cache/huggingface \
  --volume $HOST_WORKSPACE_ROOT:$EKORPKIT_WORKSPACE_ROOT \
  --volume $PWD/scripts/rubrix/.users.yaml:/config/.users.yaml \
  --name $EKORPKIT_DOCKER_CONTAINER_NAME \
  $EKORPKIT_DOCKER_IMAGE_NAME:latest $CMD

