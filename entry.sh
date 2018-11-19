#!/bin/bash

set -e

cd /home/node/app
npm ci
npm cache clean --force
npm run stable