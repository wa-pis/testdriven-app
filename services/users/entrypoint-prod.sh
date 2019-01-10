#!/bin/sh

echo "Waiting for mysql..."

while ! nc -z db-host 3306; do
  sleep 0.1
done

echo "mysql started"

gunicorn -b 0.0.0.0:5000 manage:app
