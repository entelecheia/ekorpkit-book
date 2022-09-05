#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run - --rm \
	-p $LABELSTUDIO_HOST_PORT:8080 \
	-v $LABELSTUDIO_HOST_DATA_DIR:/label-studio/data \
	--name $LABELSTUDIO_DOCKER_CONTAINER_NAME \
	$LABELSTUDIO_DOCKER_IMAGE_NAME:latest
