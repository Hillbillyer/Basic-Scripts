#!/bin/bash

read -p "Container: " container
read -p "Image: " image

sudo docker stop "$container"
# $(docker ps -a -q)

sudo docker rm "$container"
# $(docker ps -a -q)

sudo docker rmi "$image-2"
# $(docker images -a)

cd dashy && sudo docker-compose up -d