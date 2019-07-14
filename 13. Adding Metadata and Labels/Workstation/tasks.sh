#!/bin/bash

docker login
docker build -t romanng/weather-app --build-arg BUILD_DATE=2019-07-14T10:25:40Z --build-arg APPLICATION_NAME=weather-app --build-arg BUILD_VERSION=v1.0 .
docker images
docker inspect romanng/weather-app
docker push romanng/weather-app

echo
read -p "Press [Enter] key to update weather-app..."
cd weather-app
git checkout v1.1
git branch
cd ..
docker build -t romanng/weather-app --build-arg BUILD_DATE=2019-07-14T10:25:40Z --build-arg APPLICATION_NAME=weather-app --build-arg BUILD_VERSION=v1.1 .
docker images
docker inspect romanng/weather-app
docker push romanng/weather-app
