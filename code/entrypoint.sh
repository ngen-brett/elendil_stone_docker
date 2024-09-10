#!/bin/bash
set -e

python /app/preload_streams.py

if [ ! -z $SVC_PORT ]
then
  echo "Starting on environment-designated port ${SVC_PORT}"
  gunicorn -b "0.0.0.0:${SVC_PORT}" app:app
else
  echo "Starting on default port 8087"
  gunicorn -b "0.0.0.0:8087" app:app
fi
