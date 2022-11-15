#!/bin/sh
python3 manage.py migrate
python3 manage.py createsuperuser
python3 -m venv devops-env
source devops-env/bin/activate
python3 manage.py runserver 0.0.0.0:8000