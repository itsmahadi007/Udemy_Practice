from .base import *
from .base import env

DEBUG = True
# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = env("DJANGO_SECRET_KEY", default='django-insecure-y#+y91&e7!#x+^jd-b-6ot4mvn2%-we-c-zsb-84*ncc$*gk)d')

ALLOWED_HOSTS = ["localhost", "0.0.0.0", "127.0.0.1"]  # This is the default value
