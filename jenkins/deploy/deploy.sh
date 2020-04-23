#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth jenkins@18.212.158.161:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh jenkins@18.212.158.161:/tmp/publish.sh
ssh -i /opt/prod jenkins@18.212.158.161 "/tmp/publish.sh"
