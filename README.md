# testCloud
tiny web helloworld project to test cloud

## DOCKER
If the flask web application is running in a container, it should be launched on host 0.0.0.0 to be exposed to the host.

## HTTP SERVER
### gunicorn
Run the flask web application with gunicorn is really simple: 
```sh
> gunicorn --bind 0.0.0.0:8080 hello:app
```
gunicorn parameters can be added to a configuration file and passed as parameters.

## ngrock
Simple exposing localhost server with https://ngrok.com/
```sh
$ ./ngrok http 80
> Create secure public url https://<random>.ngrok.io (free account get random URL)
> Inspecting your traffic on localhost:4040
```

## CI/CD
### circleci
Quite easy to follow tutorial in order to trigger build on a commit.
I find the yml config file very verbose.
However the CI is really fast for running a build/tests. 
The system of cache sure help. I really appreciate the rebuild with ssh option.
### travis-ci
Slower than circleci but the yml config file is so simple.
Default dependencies and env management help keeping the file simple.

## Heroku
### Manual deployement
```sh
$ heroku create
$ git push heroku master
```
!!!Note that Heroku only deploys code that is pushed to the master branch of your heroku remote.!!!

