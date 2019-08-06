#!/bin/bash

cp daemon.json /etc/docker/
systemctl restart docker
docker-compose up -d
