#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

python -m rubrix
