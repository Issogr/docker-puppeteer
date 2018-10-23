#!/bin/bash

set -e

if [[ "$(docker ps -a | grep "raccolta" 2> /dev/null)" != "" ]]; then
  docker rm puppeteer
fi
if [[ "$(docker images -q raccolta-cv 2> /dev/null)" != "" ]]; then
  docker rmi node-puppeteer
fi

docker build -t node-puppeteer .

docker create --name=puppeteer \
-e PGID=1000 -e PUID=1000 \
-e TZ=Europe/Rome \
#--cap-add=SYS_ADMIN \
node-puppeteer:latest
