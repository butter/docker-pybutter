FROM butter/python:3.6.1
LABEL maintainer="Butter.ai <dev@butter.ai>"

COPY docker-entrypoint.sh /usr/src/app/run/

RUN pip install --no-cache-dir \
    analytics-python==1.2.7 \
    attrs==16.3.0 \
    bcrypt==3.1.3 \
    Celery==4.0.2 \
    colorlog==2.10.0 \
    evernote3==1.25.12 \
    Flask-API==0.7.1 \
    Flask==0.12.1 \
    future==0.16.0 \
    google-api-python-client==1.6.2 \
    ipdb==0.10.3 \
    ipython==5.3.0 \
    logstash_formatter==0.5.16 \
    oauth2client==4.1.0 \
    pika==0.10.0 \
    psycopg2==2.7.1 \
    pymongo==3.4.0 \
    python-dateutil==2.6.0 \
    pytz==2017.2 \
    raven[Flask]==6.0.0 \
    redis==2.10.5 \
    requests==2.14.2 \
    slackclient==1.0.5 \
    uwsgi==2.0.15 \
    web-pdb==1.3.1

ENTRYPOINT ["run/docker-entrypoint.sh"]
CMD ["python3"]
