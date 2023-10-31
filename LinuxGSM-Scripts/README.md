# LinuxGSM Scripts
These are scripts to make using multiple LinuxGSM Game Servers easier. <br>

## [cmd.sh](https://github.com/Hillbillyer/Basic-Scripts/blob/main/LinuxGSM-Scripts/cmd.sh) - Script for Sending a Command into a LinuxGSM Server <br>
## [game-update.sh](https://github.com/Hillbillyer/Basic-Scripts/blob/main/LinuxGSM-Scripts/game-update.sh) - Script for Updating the Machine and all LinuxGSM Servers <br> *(Please run start.sh after system reboot)* <br>
## [start.sh](https://github.com/Hillbillyer/Basic-Scripts/blob/main/LinuxGSM-Scripts/start.sh) - Script for Starting all LinuxGSM Servers <br>
## [stop.sh](https://github.com/Hillbillyer/Basic-Scripts/blob/main/LinuxGSM-Scripts/stop.sh) - Script for Stopping all LinuxGSM Servers <br>

Run this command to add aliases:<br>
```
git clone https://github.com/Hillbillyer/Basic-Scripts

mv Basic-Scripts/LinuxGSM-Scripts/alias.sh alias.sh
mv Basic-Scripts/LinuxGSM-Scripts/cmd.sh cmd.sh
mv Basic-Scripts/LinuxGSM-Scripts/game-update.sh game-update.sh
mv Basic-Scripts/LinuxGSM-Scripts/start.sh start.sh
mv Basic-Scripts/LinuxGSM-Scripts/stop.sh stop.sh

chmod u+x alias.sh
chmod u+x cmd.sh
chmod u+x game-update.sh
chmod u+x start.sh
chmod u+x start.sh

./alias.sh 
```
Now you can simple type:<br>
*cmd*: starts command input<br>
*update*: updates the machine<br>
*start*: starts game servers<br>
*stop*: stops game server<br>

*https://hillbillyer.net*<br>
*contact@hillbillyer.net*<br>
*Please send me an email if you have any questions.*<br>