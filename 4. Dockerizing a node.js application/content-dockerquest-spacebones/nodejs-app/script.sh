#!/bin/bash

docker build -t baconator:dev .
docker run -d -p 80:8081 baconator:dev
