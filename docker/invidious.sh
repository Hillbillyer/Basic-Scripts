#!/bin/bash

sudo docker kill invidious_invidious_1
sudo docker kill invidious_invidious-db_1

sudo docker rm invidious_invidious_1
sudo docker rm invidious_invidious-db_1

sudo rm -r invidious

git clone https://github.com/iv-org/invidious.git
cd invidious

sudo apt install pwgen -y
pwgen 20 1

sleep 5s

nano docker-compose.yml

sudo docker-compose up -d