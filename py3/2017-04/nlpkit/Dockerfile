FROM butter/butter-nlpkit:py3-2017-04

COPY docker-entrypoint.sh /usr/src/app/run/

RUN pip install --no-cache-dir \
    analytics-python==1.2.7 \
    attrs==16.3.0 \
    bcrypt==3.1.3 \
    beautifulsoup4==4.5.3 \
    Celery==4.0.2 \
    colorlog==2.10.0 \
    editdistance==0.3.1 \
    Flask-API==0.7.1 \
    Flask==0.12.1 \
    future==0.16.0 \
    ipdb==0.10.2 \
    ipython==5.3.0 \
    jsonpickle==0.9.4 \
    logstash_formatter==0.5.16 \
    nltk==3.2.2 \
    psycopg2==2.7.1 \
    pymongo==3.4.0 \
    python-dateutil==2.6.0 \
    pytz==2017.2 \
    raven[Flask]==6.0.0 \
    redis==2.10.5 \
    requests==2.13.0 \
    uwsgi==2.0.15

ENTRYPOINT ["run/docker-entrypoint.sh"]
CMD ["python3"]
