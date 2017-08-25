#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon

ADDRESS=$(jq --raw-output ".address" $CONFIG_PATH)
PORT=$(jq --raw-output ".port" $CONFIG_PATH)
OPTIONS=$(jq --raw-output ".commandlineoptions" $CONFIG_PATH)
TIVO=$(jq --raw-output ".tivo" $CONFIG_PATH)

ARGS=""
if [ ! -z "$ADDRESS" ]
then
    ARGS = "$ARGS -a $ADDRESS"
fi

echo "$ARGS"

echo CONFIG_PATH
echo CONFIG_DIR
echo "$DOMAIN"
echo $(ls)
echo $(ls rproxy/)
python2 /rproxy/rproxy.py --list
