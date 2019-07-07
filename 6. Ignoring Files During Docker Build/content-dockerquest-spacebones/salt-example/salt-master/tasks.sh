#!/bin/bash

docker build -t salt-master:deb .
docker images
docker run -it salt-master:deb ls /
