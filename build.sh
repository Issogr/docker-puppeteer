#!/bin/bash

set -e

if [[ "$(docker ps -a | grep "puppeteer" 2> /dev/null)" != "" ]]; then
  docker rm puppeteer
fi
if [[ "$(docker images -q node-puppeteer 2> /dev/null)" != "" ]]; then
  docker rmi node-puppeteer
fi

docker build -t node-puppeteer .