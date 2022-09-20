#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d -p $RUBRIX_NGROK_PORT \
	--env NGROK_AUTH=$RUBRIX_NGROK_AUTH_TOKEN \
	--env NGROK_PORT=http://$JUPYTER_HOST_IP:$RUBRIX_HOST_PORT \
	--net $EKORPKIT_DOCKER_NETWORK_NAME \
	--name $RUBRIX_NGROK_CONTAINER_NAME \
	wernight/ngrok:latest
