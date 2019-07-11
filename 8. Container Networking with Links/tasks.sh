#!/bin/bash

docker run -d -p 80:80 --name spacebones spacebones/spacebones:thewebsite
docker run -d -P --name treatlist --link spacebones spacebones/postgres
