#!/bin/bash
set -eu
echo "Starting venv..."
python3 -m venv venv
source venv/bin/activate

echo "Installing: Django"
pip install django

echo "Installing: Django Rest Framework"
pip install djangorestframework

echo "Database migrating..."
python manage.py migrate

echo "Creating superuser..."
python manage.py createsuperuser

echo "Setup completed!"
python manage.py runserver
