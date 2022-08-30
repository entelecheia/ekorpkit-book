#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport


CMD=${1:-/bin/bash}

docker run -it --rm \
	--ulimit memlock=-1 \
	--ulimit stack=67108864 \
	--env-file .env \
	--publish 6900:6900 \
	--env-file .env \
    --volume $PWD/.users.yaml:/config/.users.yaml
	--name $RUBRIX_DOCKER_CONTAINER_NAME \
	$RUBRIX_DOCKER_IMAGE_NAME:latest $CMD
  
	# - -volume ${PWD}/.users.yaml:/config/.users.yaml
