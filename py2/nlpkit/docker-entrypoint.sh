#!/bin/bash
set -e

if [[ -d requirements/patches ]]; then
  if [[ -v GITHUB_USERNAME && -v GITHUB_ACCESS_TOKEN ]]; then
    sed -i'' "s/\${GITHUB_USERNAME}/${GITHUB_USERNAME}/g;" \
             "s/\${GITHUB_ACCESS_TOKEN}/${GITHUB_ACCESS_TOKEN}/g" \
      requirements/patches.txt
  fi
  pip install -U requirements/patches/*
fi

if [[ "$1" = "uwsgi" ]]; then
  shift; exec gosu butter uwsgi "$@"
elif [[ "$1" = "celery" ]]; then
  shift; exec gosu butter celery "$@"
fi

exec "$@"
