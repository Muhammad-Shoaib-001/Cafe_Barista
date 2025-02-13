#!/bin/bash
set -e
docker pull muhammadshoaib100/app:latest

docker run -d -p 8080:8080 muhammadshoaib100/app:latest
