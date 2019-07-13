#!/bin/bash

sudo sed -i 's/#\$ModLoad imudp/\$ModLoad imudp/' /etc/rsyslog.conf
sudo sed -i 's/#\$UDPServerRun 514/\$UDPServerRun 514/' /etc/rsyslog.conf

sudo systemctl restart rsyslog
sudo mkdir /etc/docker/
sudo cp daemon.json /etc/docker/
sudo systemctl restart docker

docker run -d --name syslog-logging httpd
docker run -d --name json-logging --log-driver json-file httpd

docker logs syslog-logging
sudo tail -n 50 /var/log/messages
docker logs json-logging
