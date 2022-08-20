#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

curl -L https://tljh.jupyter.org/bootstrap.py | sudo -E python3 - --admin $JUPYTERHUB_ADMIN_USERNAME
