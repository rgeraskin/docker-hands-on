#!/bin/bash
docker swarm init
# add nodes
docker node list
docker service create --name weather-app --publish published=80,target=3000 --replicas=3 weather-app
docker service list
