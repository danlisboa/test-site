#!/bin/bash
echo "Starting API Hello Server"
set -x #echo on

cd /home/ubuntu/projects

sudo docker kill $(sudo docker ps -q)

sudo docker build . -t test-app

sudo docker run -d -p 3001:3000 test-app

sudo docker ps