#!/bin/sh

#Machine Updates
sudo /hill/scripts/update.sh

clear
    # Create Host Variable for Machine
    host=$(cat /etc/hostname)
    echo "$host"
clear
## NTFY Notification Start
curl -H "Title: $host LinuxGSM Update" -H "Markdown: yes" -d "$host LinuxGSM Update Initiated" https://ntfy.hillbillyer.dev/"$host"

#Copy List of Current LGSM Servers
echo "--==Grabbing Server List==--"
sleep 3s
wget -O /hill/scripts/linuxgsm/serverlist.csv https://raw.githubusercontent.com/GameServerManagers/LinuxGSM/master/lgsm/data/serverlist.csv
clear
#Create Game Server Variables
echo "--==Updating Game Servers==--"
sleep 3s
clear
# Updates Currently Installed Game Servers
while IFS="," read shortname gameservername gamename os;
do 
    clear
    sudo su - ${shortname} -c "echo '--=='${gamename}' Stopping==--' && ./'${shortname}'server stop && clear"
    sudo su - ${shortname} -c "echo '--=='${gamename}' Updating==--' && ./'${shortname}'server update && clear" && curl -H "Title: ${shortname} Updated" -H "Markdown: yes" -d "${gamename} has been updated!" https://ntfy.hillbillyer.dev/"$host"
    sudo su - ${shortname} -c "echo '--=='${gamename}' LGSM Config Updating==--' && ./'${shortname}'server update-lgsm && clear"
done < /hill/scripts/linuxgsm/serverlist.csv
clear

## NTFY Notification End
curl -H "Title: $host LinuxGSM Update" -H "Markdown: yes" -d "$host LinuxGSM Update Complete" https://ntfy.hillbillyer.dev/"$host"

# Intellectual Property
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

sleep 3s
sudo reboot