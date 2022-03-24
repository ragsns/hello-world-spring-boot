#!/usr/bin/env bash

set -x

# Pull the docker image on the host
image="javaimage:latest"
containername="java"

docker pull $image
echo "Succesfully, pulled the image $image!"

docker kill $(docker ps -q)
echo "Succesfully, stop all the running containers!"

docker rm $(docker ps -a -q)
echo "Succesfully, removed all the passive containers!"

echo "Starting new docker container"
docker run -d -p  8080:8080 --name $containername $image

docker ps | grep java >/dev/null && echo "Succesfully started $containername container" || echo "Failed on starting $containername container"


netstat -ntulp | grep 8080 >/dev/null && echo "Succesfully running the $containername application" || echo "$containername is not running"

