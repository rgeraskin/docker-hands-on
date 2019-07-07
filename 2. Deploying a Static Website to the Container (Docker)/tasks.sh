#!/bin/sh

#sudo usermod -aG docker cloud_user
sudo docker run -d --name treatseekers -p 80:80 spacebones/doge
