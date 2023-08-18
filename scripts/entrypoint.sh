#!/bin/sh

set -e

python manage.py collectstatic --noinput

uwsgi --socket :8081 --master --enable-threads --module our_app.wsgi