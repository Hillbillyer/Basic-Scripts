#!/bin/bash

#Machine Updates
clear
echo "--==Machine Updating==--"
sleep 3s
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt autoremove -y
clear
#Copy List of Current LGSM Servers
echo "--==Grabbing Server List==--"
sleep 3s
wget -O hills-scripts/lgsm/serverlist.csv https://raw.githubusercontent.com/GameServerManagers/LinuxGSM/master/lgsm/data/serverlist.csv
clear
#Create Game Server Variables
echo "--==Updating Game Servers==--"
sleep 3s
clear
while IFS=", " read shortname gameservername gamename os;
#Updates Currently Installed Game Servers
do 
    clear
    sudo su - ${shortname} -c "echo '--=='${gameservername}' Stopping==--' && ./'${shortname}'server stop && clear"
    sudo su - ${shortname} -c "echo '--=='${gameservername}' Updating==--' && ./'${shortname}'server update && clear"
    sudo su - ${shortname} -c "echo '--=='${gameservername}' LGSM Config Updating==--' && ./'${shortname}'server update-lgsm && clear"
    sudo su - ${shortname} -c "echo '--=='${gameservername}' Starting==--' && ./'${shortname}'server start && clear"
done < hills-scripts/lgsm/serverlist.csv
clear
#Alerts Scripts has Completed
echo "--==All Installed Game Servers Up-To-Date!==--"
sleep 3s && clear



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