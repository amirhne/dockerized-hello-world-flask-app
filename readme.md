# Dockerized Simple Hello World Flask App

This is simple hello world flask app that is dockerized for education purposes.

## How it works?
at first you should have docker installed on your machine then use following instructions to build docker image with the dockerfile.

## Installing Docker
I assume that you are a linux user so you can install docker by following commands:

```
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```
## Build Docker Image
To build docker image change directory to cloned repo and execute following command:
```
docker build -t hello_world_flask_app .
```
## Run Container
After creating docker image using given dockerfile, to run container use following command:
```
docker run -d -p 80:5000 --name hello_world hello_world_flask_app
```
##Make Sure Container is Running
to make sure that your container is running use following command:
```
docker ps
```
output should like this:
```
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                    PORTS                  NAMES
6cdf53855fcf        hello_world_flask_app   "/bin/sh -c 'python3…"   5 seconds ago       Up 3 seconds              0.0.0.0:80->5000/tcp   hello_world
```

#### Result
Now you can see app running on your localhost by entering http://127.0.0.1 in your browser.
