# Hill's Scripts
Scripts that I use to keep my Homelab up-to-date.<br>

These Scripts are helpful if you are running LinuxGSM Game Servers:<br>
[LinuxGSM Scripts](https://github.com/Hillbillyer/scripts/tree/main/linuxgsm) <br>

These Scripts are used for Pi-hole Servers:<br>
[Pi-Hole Scripts](https://github.com/Hillbillyer/scripts/tree/main/pihole)


```
sudo rm -r /hill
sudo mkdir -p /hill
sudo chown andrew:andrew /hill
sudo chgrp andrew /hill
git clone https://github.com/Hillbillyer/scripts /hill/scripts

chmod +x /hill/scripts/update.sh
chmod +x /hill/scripts/ubuntu/update-ubuntu.sh
chmod +x /hill/scripts/docker/server-1-docker.sh
chmod +x /hill/scripts/linuxgsm/install-lgsm.sh
chmod +x /hill/scripts/linuxgsm/update-lgsm.sh
chmod +x /hill/scripts/linuxgsm/start-lgsm.sh
chmod +x /hill/scripts/linuxgsm/restart-lgsm.sh
chmod +x /hill/scripts/linuxgsm/stop-lgsm.sh
chmod +x /hill/scripts/pihole/update-pihole.sh

## Only copy this part the first time or when you would like to update the aliases.
/hill/scripts/alias.sh
source ~/.bashrc
```

*https://hillbillyer.net*<br>
*contact@hillbillyer.net*<br>
*Please send me an email if you have any questions.*<br>