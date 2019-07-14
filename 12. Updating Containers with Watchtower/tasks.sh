#!/bin/bash

docker build -t romanng/express .
docker login
docker push romanng/express
#docker run -d -p 80:3000 --restart always --name demo-app romanng/express
docker run -d -p 80:3000 --name demo-app romanng/express
docker run -d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock --restart always v2tec/watchtower -i 30
docker ps
sed -i '2 a RUN mkdir -p /var/test' Dockerfile
docker build -t romanng/express .
docker push romanng/express
docker exec demo-app ls /var
docker ps

echo
echo check in 30 seconds
echo docker exec demo-app ls /var
echo docker ps

