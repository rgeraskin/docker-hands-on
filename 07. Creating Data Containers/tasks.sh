#!/bin/bash

docker create -v /data --name boneyard spacebones/postgres /bin/true
docker run -d --volumes-from boneyard --name cheese spacebones/postgres
docker run -d --volumes-from boneyard --name tuna spacebones/postgres
docker run -d --volumes-from boneyard --name bacon spacebones/postgres
