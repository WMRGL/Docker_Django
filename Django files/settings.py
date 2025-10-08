import os
from pathlib import Path
import environ as environ

env = environ.Env()
environ.Env.read_env()

SECRET_KEY = env('SECRET_KEY')

ALLOWED_HOSTS = env.list('ALLOWED_HOSTS')

CSRF_TRUSTED_ORIGINS = env.list('CSRF_TRUSTED_ORIGINS')

DATABASES = {
    'default': env.db('DEFAULT_URL'),
    'Shire_Data': env.db('SHIRE_URL'),
}

STATIC_URL = 'static/'
STATIC_ROOT = '/app/static/'
