# VERSION 0.1.0
FROM jfloff/alpine-python
MAINTAINER Mathieu Adam <adammathieu@gmail.com>

# Install dependencies
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -q -r /tmp/requirements.txt

# Add server code
ADD hello.py /tmp/hello.py
    && gunicorn_settings.py /tmp/gunicorn_settings.py
WORKDIR /tmp

# Run the app
EXPOSE 5000
#ENTRYPOINT ["/usr/bin/python", "/tmp/hello.py"]
#ENTRYPOINT ["/usr/local/bin/gunicorn","-b",":5000","-workers","2","hello:app"]
ENTRYPOINT ["/usr/local/bin/gunicorn","-C","/tmp/gunicorn_settings.py","-workers","2","hello:app"]
