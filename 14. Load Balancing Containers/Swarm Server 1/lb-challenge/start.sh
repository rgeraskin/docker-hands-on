#!/bin/bash

docker-compose up -d
docker service create --name nginx-app --publish published=8080,target=80 --replicas=2 nginx
docker ps
docker service ls
