#!/bin/sh

yum install -y docker
groupadd docker
usermod -aG docker cloud_user
systemctl enable --now docker

# need reloging to work
docker pull docker.io/hello-world
docker pull 06kellyjac/nyancat
docker pull jeremy646/doge

docker run hello-world
docker ps -a