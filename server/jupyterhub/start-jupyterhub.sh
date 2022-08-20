#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

jupyterhub -f ./server/jupyterhub/jupyterhub_config.py
