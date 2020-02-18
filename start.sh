#!/bin/sh

NUM_NETWORK=$(docker network ls --filter name=reverse-proxy-net --format "{{.ID}}" | wc -l)

if [ "$NUM_NETWORK" -eq 0 ]; then
  docker network create reverse-proxy-net
fi

docker-compose up -d