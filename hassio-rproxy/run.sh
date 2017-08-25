#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon

DOMAIN=$(jq --raw-output ".domain" $CONFIG_PATH)

echo CONFIG_PATH
echo CONFIG_DIR
echo DOMAIN
echo $(ls)
echo $(ls rproxy/)
