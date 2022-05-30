#!/bin/bash
set -x

OPTIONS=${1:-""}

jupyter-book build ekorpkit-book $OPTIONS
