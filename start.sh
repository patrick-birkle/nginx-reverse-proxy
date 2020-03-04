#!/bin/sh

NUM_NETWORK=$(docker network ls --filter name=reverse-proxy-net --format "{{.ID}}" | wc -l)

if [ ${NUM_NETWORK} -eq 0 ]; then
  docker network create reverse-proxy-net
fi

actual_dir=$(pwd)

if [ -e "${actual_dir}/.env" ]; then
  rm -f ${actual_dir}/.env
fi

echo "PROXY_PATH=${actual_dir}" >> ${actual_dir}/.env
chmod 600 ${actual_dir}/.env

docker-compose up -d