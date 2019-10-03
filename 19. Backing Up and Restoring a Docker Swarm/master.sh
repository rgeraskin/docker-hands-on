#!/bin/bash
docker node list
docker service ps backup
cat swarm-token.txt
# join nodes to swarm
docker node list
docker service ps backup
systemctl stop docker
tar -czvf swarm.tgz /var/lib/docker/swarm/
scp swarm.tgz cloud_user@18.232.152.55:/home/cloud_user/

