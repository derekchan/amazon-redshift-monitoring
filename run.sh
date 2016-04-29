#!/bin/bash

export PYTHONPATH=./deps
pip install -r requirements.txt -t ./deps

export DB_USER=
export DB_PASS=
export DB_HOST=
export DB_PORT=
export DB_NAME=
export CLUSTER_NAME=
export INTERVAL=   # e.g. "1 hour"

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION= # example us-east-1

python lambda_function.py
