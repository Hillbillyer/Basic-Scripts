#!/bin/bash

sudo rm -r /hill
sudo mkdir -p /hill
sudo chown andrew:andrew /hill
sudo chgrp andrew /hill
git clone https://github.com/Hillbillyer/scripts /hill/scripts

chmod +x /hill/scripts/alias.sh
chmod +x /hill/scripts/update.sh
chmod +x /hill/scripts/ubuntu/cloud-update.sh
chmod +x /hill/scripts/ubuntu/local-update.sh
chmod +x /hill/scripts/linuxgsm/install-lgsm.sh
chmod +x /hill/scripts/linuxgsm/update-lgsm.sh
chmod +x /hill/scripts/linuxgsm/start-lgsm.sh
chmod +x /hill/scripts/linuxgsm/restart-lgsm.sh
chmod +x /hill/scripts/linuxgsm/stop-lgsm.sh
chmod +x /hill/scripts/pihole/update-pihole.sh