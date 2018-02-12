# testCloud
tiny web helloworld project to test cloud

## docker
If the flask web server is running in a container, it should be launched on host 0.0.0.0. localhost otherwise.

## ngrock
Simple exposing localhost server with https://ngrok.com/
```sh
$ ./ngrok http 80
> Create secure public url https://<random>.ngrok.io (free account get random URL)
> Inspecting your traffic on localhost:4040
```

## CI
### circleci
Quite easy to follow tutorial in order to trigger build on a commit
Even if I find the yml config file quite verbose.
I found the CI really fast for creating env. I really appreciate the rebuild with ssh option.
