#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

curl -L https://tljh.jupyter.org/bootstrap.py | python3 - \
    --admin ${JUPYTERHUB_ADMIN_USERNAME} \
    --user-requirements-txt-url https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/server/jupyterhub/requirements.txt
