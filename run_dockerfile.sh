#!/bin/sh

docker build -t .
docker run --net=host -it ngrok http 80
