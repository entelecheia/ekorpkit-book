#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d -p $NGROK_PORT \
	--env NGROK_AUTH=$NGROK_AUTH_TOKEN \
	--env NGROK_PORT=http://$JUPYTER_HOST_IP:$JUPYTER_HOST_PORT \
	--link $DOCKER_CONTAINER_NAME:http \
	--name $NGROK_CONTAINER_NAME \
	wernight/ngrok:latest

# curl $(docker port www_ngrok 4840)/api/tunnels
