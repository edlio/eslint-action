#!/bin/sh

set -e

cd /action/lib
npm install

# https://unix.stackexchange.com/questions/108174/how-to-persistently-control-maximum-system-resource-consumption-on-mac/293062#293062
ulimit -n 1024
ulimit -u 1024

echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
npm install

NODE_PATH=node_modules node /action/lib/run.js
