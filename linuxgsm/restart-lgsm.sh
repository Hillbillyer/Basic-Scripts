#!/bin/sh

curl -H "Title: Restart-Game-Server" -d "Restarting All Game Servers" https://ntfy.ahillier.dev/game-server

##Script to Restart All Game Servers
clear
#Copy List of Current LGSM Servers
echo "--==Grabbing Server List==--"
sleep 3s
wget -O /hill/scripts/linuxgsm/serverlist.csv https://raw.githubusercontent.com/GameServerManagers/LinuxGSM/master/lgsm/data/serverlist.csv
clear
#Create Game Server Variables
echo "--==Restarting Game Servers==--"
sleep 3s
clear
while IFS="," read shortname gameservername gamename os;
#Updates Currently Installed Game Servers
do 
    clear
    sudo su - ${shortname} -c "echo '--=='${gamename}' Starting==--' && ./'${shortname}'server start && clear"
done < /hill/scripts/linuxgsm/serverlist.csv
clear

curl -H "Title: Game-Server" -d "All Game Servers Up & Running" https://ntfy.ahillier.dev/game-server
clear

#Feel free to remove this if you modify the script.
echo "Script By: "
echo "
 █████   █████ ███ ████ ████ █████      ███ ████ ████                             
░░███   ░░███ ░░░ ░░███░░███░░███      ░░░ ░░███░░███                             
 ░███    ░███ ████ ░███ ░███ ░███████  ████ ░███ ░███ █████ ████ ██████  ████████ 
 ░███████████░░███ ░███ ░███ ░███░░███░░███ ░███ ░███░░███ ░███ ███░░███░░███░░███
 ░███░░░░░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███░███████  ░███ ░░░ 
 ░███    ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███ ░███░███░░░   ░███     
 █████   ████████████████████████████  ███████████████░░███████░░██████  █████    
░░░░░   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░  ░░░░░░░░░░░░░░░  ░░░░░███ ░░░░░░  ░░░░░     
                                                       ███ ░███                   
                                                      ░░██████                    
                                                       ░░░░░░                     
"
echo "https://hillbillyer.net"
echo "contact@hillbillyer.net"