FROM butter/python:3.6.0

COPY docker-entrypoint.sh /usr/src/app/run/

RUN pip install --no-cache-dir \
    analytics-python==1.2.7 \
    attrs==16.3.0 \
    bcrypt==3.1.3 \
    Celery==4.0.2 \
    colorlog==2.10.0 \
    evernote3==1.25.12 \
    Flask-API==0.6.9 \
    Flask==0.12 \
    future==0.16.0 \
    google-api-python-client==1.6.2 \
    ipdb==0.10.2 \
    ipython==5.3.0 \
    oauth2client==4.0.0 \
    psycopg2==2.7.1 \
    pymongo==3.4.0 \
    python-dateutil==2.6.0 \
    pytz==2016.10 \
    raven[Flask]==6.0.0 \
    redis==2.10.5 \
    requests==2.13.0 \
    slackclient==1.0.5 \
    uwsgi==2.0.14

ENTRYPOINT ["run/docker-entrypoint.sh"]
CMD ["python3"]
