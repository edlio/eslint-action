#!/bin/sh

set -e

cd /action/lib
npm install

echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
npm install --no-package-lock

NODE_PATH=node_modules node /action/lib/run.js
