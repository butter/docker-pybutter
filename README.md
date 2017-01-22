Butter.ai Common Python Packages
================================

## Supported tags and respective `Dockerfile` links

-	[`2017-01`, `py2` (*2017-01/Dockerfile*)](https://github.com/butter/docker-pybutter/blob/5f733bacdea7a89783aea7d64da06135d85f85b1/py2/2017-01/python/Dockerfile)
-	[`nlpkit-2017-01`, `nlpkit` (*nlpkit-2017-01/Dockerfile*)](https://github.com/butter/docker-pybutter/blob/bacd44bfc020768e7d3efef7b712c8b264610166/py2/2017-01/nlpkit/Dockerfile)
-	[`py3-2017-01`, `py3`, `latest` (*py3-2017-01/Dockerfile*)](https://github.com/butter/docker-pybutter/blob/5f733bacdea7a89783aea7d64da06135d85f85b1/py3/2017-01/python/Dockerfile)
-	[`py3-nlpkit-2017-01`, `py3-nlpkit`, (*py3-nlpkit-2017-01/Dockerfile*)](https://github.com/butter/docker-pybutter/blob/2bd15138b0a905cd695751d55a37ca34ffa43365/py3/2017-01/nlpkit/Dockerfile)

## What is PyButter?

PyButter is a set of common python packages used at Butter.ai. There are two
image versions, a base image for standard python services, and an NLPkit version
for Butter.ai natural language processing and machine learning services.

## How to use this image

### Create a `Dockerfile` in your Python app project

```dockerfile
FROM butter/pybutter:py3-2017-01
CMD [ "python", "./your-daemon-or-script.py" ]
```

or (if you need to use Python 2):

```dockerfile
FROM butter/pybutter:2017-01
CMD [ "python", "./your-daemon-or-script.py" ]
```

### Run a single Python script

For many simple, single file projects, you may find it inconvenient to write a complete `Dockerfile`. In such cases, you can run a Python script by using the Python Docker image directly:

```console
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp butter/pybutter:py3-nlpkit python your-daemon-or-script.py
```

or (again, if you need to use Python 2):

```console
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp butter/pybutter:nlpkit python your-daemon-or-script.py
```

# License

View license information for [Python 2](https://docs.python.org/2/license.html) and [Python 3](https://docs.python.org/3/license.html).
