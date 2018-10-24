#!/bin/bash

set -e

cd /home/node/app
npm ci
npm cache clean --force
node /home/node/app/index.js