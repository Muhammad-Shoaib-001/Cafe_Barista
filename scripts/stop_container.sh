#!/bin/bash
set -e

# Stop the running container (if exists)
if [ "$(docker ps -q -f name=nginx_app)" ]; then
    docker stop nginx_app
    docker rm nginx_app
fi
