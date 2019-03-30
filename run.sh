#!/bin/bash

sudo sysctl -w vm.max_map_count=262144

export DOCKERHOST=$(ip a | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | awk '{ print $2 }' | cut -f2 -d: | head -n1 | cut -f1 -d"/")

docker-compose -f ./docker-compose.yml down

docker-compose -f ./docker-compose.yml -p esdb build --no-cache

docker-compose -f ./docker-compose.yml -p esdb up #-d