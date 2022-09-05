#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d --name=netdata \
  -p 18999:19999 \
  -v netdataconfig:/etc/netdata \
  -v netdatalib:/var/lib/netdata \
  -v netdatacache:/var/cache/netdata \
  -v /etc/passwd:/host/etc/passwd:ro \
  -v /etc/group:/host/etc/group:ro \
  -v /proc:/host/proc:ro \
  -v /sys:/host/sys:ro \
  -v /etc/os-release:/host/etc/os-release:ro \
  --restart unless-stopped \
  --cap-add SYS\_PTRACE \
  --security-opt apparmor=unconfined \
  -e NETDATA\_CLAIM\_TOKEN=$NETDATA_CLAIM_TOKEN \
  -e NETDATA\_CLAIM\_URL=$NETDATA_CLAIM_URL \
  -e NETDATA\_CLAIM\_ROOMS=$NETDATA_CLAIM_ROOMS \
  netdata/netdata
