# VERSION 0.1.0
FROM jfloff/alpine-python
MAINTAINER Mathieu Adam <adammathieu@gmail.com>

RUN pip install bottle
ADD hello.py /tmp/hello.py

EXPOSE 8080
ENTRYPOINT ["/usr/bin/python", "/tmp/hello.py"]
