#!/bin/bash

docker network create --subnet 192.168.10.0/24 --gateway 192.168.10.250 borkspace
docker network ls
docker network inspect borkspace
docker run -it --rm --name treattransfer --network borkspace spacebones/nyancat:latest
