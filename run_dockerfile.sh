#!/bin/sh

docker build -t .

source .env
docker run --net=host -it ngrok http 80
