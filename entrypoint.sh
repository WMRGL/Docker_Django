#!/bin/sh

# collect all static files to the root directory
python manage.py collectstatic --no-input

python manage.py makemigrations
python manage.py migrate

# Default to production if DJANGO_ENV is not set
if [ "$DJANGO_ENV" = "development" ]; then
    echo "Development environment: skipping ngix and gunicorn setup"
    python manage.py runserver 0.0.0.0:8000
else

# start the gunicorn worker processes at the defined port
gunicorn <project name>.wsgi:application --bind 0.0.0.0:8000 &

wait

fi