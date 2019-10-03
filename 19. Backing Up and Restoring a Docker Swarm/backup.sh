#!/bin/bash
cd /home/cloud_user/
tar -xzvf swarm.tgz
cd var/lib/docker/
cp -rf swarm/ /var/lib/docker/
systemctl restart docker
docker swarm init --force-new-cluster
# join nodes to swarm
docker service ps backup
docker service scale backup=1
docker service ps backup
docker service scale backup=1
docker service ps backup
