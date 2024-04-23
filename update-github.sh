#!/bin/bash

sudo rm -r /hill
sudo mkdir -p /hill
sudo chown andrew:andrew /hill
sudo chgrp andrew /hill
git clone https://github.com/Hillbillyer/scripts /hill/scripts

chmod +x /hill/scripts/github-update.sh
chmod +x /hill/scripts/update.sh
chmod +x /hill/scripts/ubuntu/cloud-update.sh
chmod +x /hill/scripts/ubuntu/local-update.sh
chmod +x /hill/scripts/docker/server-1-docker.sh
chmod +x /hill/scripts/linuxgsm/install-lgsm.sh
chmod +x /hill/scripts/linuxgsm/update-lgsm.sh
chmod +x /hill/scripts/linuxgsm/start-lgsm.sh
chmod +x /hill/scripts/linuxgsm/restart-lgsm.sh
chmod +x /hill/scripts/linuxgsm/stop-lgsm.sh
chmod +x /hill/scripts/linuxgsm/palworld-restart.sh
chmod +x /hill/scripts/pihole/update-pihole.sh

## Creating Host Variable ##
clear
host=$(cat /hostname)
## ---------------------------------------- ##

## Discord Notification ##
curl -H "Title: $host Github" -d "Updated Github Respository" https://ntfy.hillbillyer.dev/"$host"
## ---------------------------------------- ##