#!/bin/sh

set -e

echo $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE
npm install --no-package-lock

NODE_PATH=node_modules node /action/lib/run.js
