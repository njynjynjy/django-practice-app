#!/bin/bash
set -eu
echo "Starting venv..."
python3 -m venv venv
source venv/bin/activate

echo "\nInstalling: Django"
pip install django

echo "\nInstalling: Django Rest Framework"
pip install djangorestframework

echo "\nDatabase migrating..."
python manage.py migrate

echo "\nCreating superuser..."
python manage.py createsuperuser

echo "\nSetup completed!"
python manage.py runserver
