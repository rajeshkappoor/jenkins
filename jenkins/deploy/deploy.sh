#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/ubuntu/jenkins/prod /tmp/.auth jenkins@18.212.158.161:/tmp/.auth
scp -i /home/ubuntu/jenkins/prod ./jenkins/deploy/publish.sh jenkins@18.212.158.161:/tmp/publish.sh
ssh -i /home/ubuntu/jenkins/prod jenkins@18.212.158.161 "/tmp/publish.sh"
