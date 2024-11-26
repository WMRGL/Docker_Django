#!/bin/sh

# collect all static files to the root directory
#python manage.py collectstatic --no-input
#
#python manage.py makemigrations
#python manage.py migrate

# start the gunicorn worker processes at the defined port
gunicorn <project name>.wsgi:application --bind 0.0.0.0:8000 &

wait