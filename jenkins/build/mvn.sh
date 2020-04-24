#!/bin/sh

echo "************************"
echo "****Building JAR6 *******"
echo "************************"

WORKSPACE=/home/ubuntu/jenkins/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -u 1000 -e MAVEN_CONFIG=/app -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app  maven:3-alpine "$@"
