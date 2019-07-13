#!/bin/bash

docker volume create mission-status
sudo cp -r /home/cloud_user/content-dockerquest-spacebones/volumes/* /var/lib/docker/volumes/mission-status/_data/
docker run --rm -p 80:80 --mount source=mission-status,destination=/usr/local/apache2/htdocs/ httpd
