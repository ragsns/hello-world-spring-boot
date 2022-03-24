#!/usr/bin/env bash

set -x

echo "creating image using pom.xml > Jib and running the docker container"

mvn -f "pom.xml" jib:dockerBuild