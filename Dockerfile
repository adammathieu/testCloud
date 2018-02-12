# VERSION 0.1.0
FROM jfloff/alpine-python
MAINTAINER Mathieu Adam <adammathieu@gmail.com>

# Install dependencies
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -q -r /tmp/requirements.txt

# Add server code
ADD hello.py /tmp/hello.py
WORKDIR /tmp

# Run the app
EXPOSE 5000
ENTRYPOINT ["/usr/bin/python", "/tmp/hello.py"]
