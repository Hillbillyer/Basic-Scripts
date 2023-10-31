# LinuxGSM Scripts
These are scripts to make using multiple LinuxGSM Game Servers easier. <br>

## [cmd.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/LinuxGSM-Scripts/cmd.sh) - Script for Sending a Command into a LinuxGSM Server <br>
## [game-update.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/game-update.sh) - Script for Updating the Machine and all LinuxGSM Servers <br> *(Please run start.sh after system reboot)* <br>
## [start.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/start.sh) - Script for Starting a specific LinuxGSM Server <br>
## [start-all.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/start-all.sh) - Script for Starting all LinuxGSM Servers <br>
## [stop.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/stop.sh) - Script for Stopping a specific LinuxGSM Server <br>
## [stop-all.sh](https://github.com/Hillbillyer/hills-scripts/blob/main/lgsm/stop-all.sh) - Script for Stopping all LinuxGSM Servers <br>

Run this command to add aliases:<br>
```
git clone https://github.com/Hillbillyer/hills-scripts

chmod u+x hills-scripts/lgsm/alias.sh
chmod u+x hills-scripts/lgsm/cmd.sh
chmod u+x hills-scripts/lgsm/game-update.sh
chmod u+x hills-scripts/lgsm/start.sh
chmod u+x hills-scripts/lgsm/start-all.sh
chmod u+x hills-scripts/lgsm/stop.sh
chmod u+x hills-scripts/lgsm/stop-all.sh

cd hills-scripts/lgsm

./alias.sh 

cd

source ~/.bashrc
```
Now you can simple type:<br>
*cmd*: starts command input<br>
*update*: updates the machine<br>
*start*: starts game servers<br>
*stop*: stops game server<br>

*https://hillbillyer.net*<br>
*contact@hillbillyer.net*<br>
*Please send me an email if you have any questions.*<br>