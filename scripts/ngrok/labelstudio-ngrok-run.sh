#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d -p $LABELSTUDIO_NGROK_PORT \
	--env NGROK_AUTH=$LABELSTUDIO_NGROK_AUTH_TOKEN \
	--env NGROK_PORT=http://$JUPYTER_HOST_IP:$LABELSTUDIO_HOST_PORT \
	--net $EKORPKIT_DOCKER_NETWORK_NAME \
	--name $LABELSTUDIO_NGROK_CONTAINER_NAME \
	wernight/ngrok:latest
