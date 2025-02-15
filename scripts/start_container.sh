#!/bin/bash
set -e

# Stop and remove any existing container
if [ "$(docker ps -q -f name=nginx_app)" ]; then
    docker stop nginx_app
    docker rm nginx_app
fi

# Navigate to the app directory
cd /home/ec2-user/app

# Build the Docker image
docker build -t nginx_app .

# Run the new container
docker run -d --name nginx_app -p 9091:80 nginx_app 
