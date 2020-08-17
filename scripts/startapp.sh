#!/bin/bash

source /venv/bin/activate
cd /app/source
echo "----- Collect static files ------ " 
python manage.py collectstatic --noinput
echo "-----------Migration--------- "
python manage.py makemigrations 
python manage.py migrate


gunicorn -b :5000 --reload --access-logfile - --error-logfile - myapp.wsgi:application --pythonpath "/app/source,/app/source/myapp/"

