#!/bin/bash

sudo rm -r /hill
sudo mkdir -p /hill
sudo chown andrew:andrew /hill
sudo chgrp andrew /hill
git clone https://github.com/Hillbillyer/scripts /hill/scripts

chmod +x /hill/scripts/alias.sh
chmod +x /hill/scripts/github-update.sh
chmod +x /hill/scripts/update.sh
chmod +x /hill/scripts/ubuntu/cloud-update.sh
chmod +x /hill/scripts/ubuntu/local-update.sh
chmod +x /hill/scripts/linuxgsm/install-lgsm.sh
chmod +x /hill/scripts/linuxgsm/update-lgsm.sh
chmod +x /hill/scripts/linuxgsm/start-lgsm.sh
chmod +x /hill/scripts/linuxgsm/restart-lgsm.sh
chmod +x /hill/scripts/linuxgsm/stop-lgsm.sh
chmod +x /hill/scripts/pihole/update-pihole.sh

## Creating Host Variable
clear
    host=$(cat /etc/hostname)

## Discord Notification Start
export WEBHOOK_URL="https://discord.com/api/webhooks/1202410026367455292/lOo50UlEEdfr48-a1wdppo30HOQGIWtEb5D9POVxYknK9QuXiFdIm3zp0JRFtTYLqRF9"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "'$host' updated Github Repository"}' \
  $WEBHOOK_URL
