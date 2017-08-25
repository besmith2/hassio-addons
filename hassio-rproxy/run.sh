#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_DIR=/config/hadaemon
echo Loading rproxy ...
echo Running with the following parameters /rproxy/rproxy.py "$(jq --raw-output ".commandlineoptions" $CONFIG_PATH)"

#python2 /rproxy/rproxy.py -h
python2 /rproxy/rproxy.py -a 192.168.0.112 -v -f 
#python2 /rproxy/rproxy.py "$(jq --raw-output ".commandlineoptions" $CONFIG_PATH)"
