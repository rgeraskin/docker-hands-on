#!/bin/bash

docker-compose up -d

docker stats --format "table {{.Name}} {{.ID}} {{.MemUsage}} {{.CPUPerc}}"
