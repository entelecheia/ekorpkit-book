#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

NV_VISIBLE_DEVICES=${1:-"2,3,4,5,6,7"}
CMD=${2:-/bin/bash}

docker run -it --rm \
  --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=$NV_VISIBLE_DEVICES \
  --ipc=host \
  --shm-size=$DOCKER_SHM_SIZE \
  --ulimit memlock=-1 \
  --ulimit stack=67108864 \
  -p $JUPYTER_HOST_PORT:$JUPYTER_PORT \
  -e WANDB_API_KEY=$WANDB_API_KEY \
  -v $WORKSPACE_HOST:$WORKSPACE_DOCKER \
  ekorpkit-torch:21.05-py3 $CMD
