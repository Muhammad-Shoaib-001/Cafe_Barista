#!/bin/bash

docker pull muhammadshoaib100/app:latest

docker run -d -p 80:8080 muhammadshoaib100/app:latest