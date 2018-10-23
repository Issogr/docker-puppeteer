#!/bin/bash

set -e

cd /home/pptruser/app
npm ci
npm cache clean --force
node /home/pptruser/app/index.js