#!/bin/sh

echo "************************"
echo "****Building JAR *******"
echo "************************"

echo $WORKSPACE

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
