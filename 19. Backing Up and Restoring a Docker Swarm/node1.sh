#!/bin/bash
docker swarm join --token SWMTKN-1-65r5s11qa3t2kxlnj0cjz24iipj05ee2dhwunm9o6xilveh9xs-3iz5csurgmcl2jnhpd2dl8i84 10.0.1.170:2377
# do stuff
docker swarm leave
docker swarm join --token SWMTKN-1-65r5s11qa3t2kxlnj0cjz24iipj05ee2dhwunm9o6xilveh9xs-3iz5csurgmcl2jnhpd2dl8i84 10.0.1.20:2377
