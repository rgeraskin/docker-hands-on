#!/bin/bash
docker swarm init
docker swarm join-token manager
docker node ls
docker node update --availability drain j4uufnlxsxb2qvbuch1gjpnoj
docker node update --availability drain yr4hh8lzmikndw18mu86apk2u
docker node ls
docker service create --name httpd -p 80:80 --replicas 3 httpd
docker service ps httpd
docker service scale httpd=5
docker service ps httpd
docker service scale httpd=2
docker service ps httpd
