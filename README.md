# Golang Challenge
Challenge full-cycle to build go lang image for docker

Link to Docker Hub:
https://hub.docker.com/repository/docker/lgsjesus/hello-app-go

To pull this image from docker hub, run the follow command:

docker pull lgsjesus/hello-app-go:small 


In this challanger i build a smallest docker image possible using golang.

For build Image docker run the follow command:

docker build -t hello-app:small .

After it for test this image you can use the command:

docker run -it --rm --name hello-app hello-app:small
docke
It will show Hello World message.
