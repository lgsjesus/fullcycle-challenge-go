# Golang Challenge
Challenge full-cycle to build go lang image for docker

In this challanger i build a smallest docker image possible using golang.

For build Image docker run the follow command:

docker build -t hello-app:small .

After it for test this image you can use the command:

docker run -it --rm --name hello-app hello-app:small

It will show Hello World message.
