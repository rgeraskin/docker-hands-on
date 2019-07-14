#!/bin/bash

docker run -d --name weather-app -p 80:3000 --restart always romanng/weather-app
docker ps
docker inspect weather-app

echo
read -p "Press [Enter] key to update weather-app container info..."
docker ps
docker inspect weather-app

echo 
echo check manually
echo docker ps
echo docker inspect weather-app