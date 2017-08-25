#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon

ADDRESS=$(jq --raw-output ".address" $CONFIG_PATH)
PORT=$(jq --raw-output ".port" $CONFIG_PATH)
OPTIONS=$(jq --raw-output ".commandlineoptions" $CONFIG_PATH)
TIVO=$(jq --raw-output ".tivo" $CONFIG_PATH)

export ARGS=""

if [[ ! -z $(jq --raw-output ".address" $CONFIG_PATH) ]]; then
    ARGS="$ARGS -a $(jq --raw-output ".address" $CONFIG_PATH)"
fi

if [[ ! -z $(jq --raw-output ".port" $CONFIG_PATH) ]]; then
    ARGS="$ARGS -p $(jq --raw-output ".port" $CONFIG_PATH)"
fi

if [[ ! -z $(jq --raw-output ".tivo" $CONFIG_PATH) ]]; then
    ARGS=" -tivo $(jq --raw-output ".tivo" $CONFIG_PATH)"
fi

if [[ ! -z $(jq --raw-output ".commandlineoptions" $CONFIG_PATH) ]]; then
    ARGS="$(jq --raw-output ".commandlineoptions" $CONFIG_PATH)"
fi




echo "$ARGS"

echo CONFIG_PATH
echo CONFIG_DIR
echo "$ADDRESS"
echo $(ls)
echo $(ls rproxy/)
echo /rproxy/rproxy.py "$ARGS"
python2 /rproxy/rproxy.py "$ARGS"
