#!/bin/bash
set -e

# Stop the running container
containerid="docker ps | awk -F" " '{print $1}'"
echo $containerid

# forcely remove the container
docker rm -f $containerid
