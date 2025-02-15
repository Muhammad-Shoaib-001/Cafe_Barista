#!/bin/bash
set -e

# Stop and remove the existing container (if running)
CONTAINER_NAME="nginx_app"

if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Stopping existing container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Pull the latest image
echo "Pulling latest image..."
docker pull muhammadshoaib100/app:latest

# Run the container with the same name to avoid duplicates
echo "Starting new container..."
docker run -d --name $CONTAINER_NAME -p 9091:80 muhammadshoaib100/app:latest 
