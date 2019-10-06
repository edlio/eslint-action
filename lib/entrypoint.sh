#!/bin/sh

set -e

echo $GITHUB_ACTION
echo $GITHUB_EVENT_NAME
echo $GITHUB_WORKFLOW
echo $GITHUB_WORKSPACE

npm install --no-package-lock

NODE_PATH=node_modules node /action/lib/run.js
