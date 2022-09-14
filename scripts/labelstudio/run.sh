#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d --rm \
	--volume $LABELSTUDIO_HOST_DATA_DIR:/label-studio/data \
	--network=$EKORPKIT_DOCKER_NETWORK_NAME \
  	--publish $LABELSTUDIO_HOST_PORT:8080 \
	--name $LABELSTUDIO_DOCKER_CONTAINER_NAME \
	$LABELSTUDIO_DOCKER_IMAGE_NAME:latest
