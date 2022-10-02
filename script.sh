#!/bin/bash
version="latest"
docker pull abhinandan195/sample-application:$version
container="$(docker ps  | grep abhinandan195/sample-application:$version| awk '{print $1}')"
if [[ -n $container ]];
then
        echo "container found"
        docker stop $container
fi
echo "no containers found starting one"
docker run -d -p 8080:8080 abhinandan195/sample-application:$version
if [[ $? -eq 0 ]];
then
    echo "started container successfully"
    sleep 10
    curl http://localhost:8080 
    if [[ $? -eq 0 ]];
    then 
         echo "application working"
    else
         echo "application not working"
    fi
else
         echo "container could not be started"
fi