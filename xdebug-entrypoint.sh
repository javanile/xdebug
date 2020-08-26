#!/bin/sh
set -e

echo "=== XDebug::init ==="

source xdebug-init.sh
echo "Sniffing port: 9001"

echo "=== XDebug::logs ==="

socat -v tcp-listen:9001,reuseaddr,fork tcp:${DOCKER_HOST}:9000
