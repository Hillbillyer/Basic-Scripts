#!/bin/bash

## Creating Host Variable ##
clear
host=$(cat /hill/hostname)
## ---------------------------------------- ##

## NTFY Notification ##
curl -H "Title: $host Pi-Hole" -d "Pi-Hole Update Starting" https://ntfy.hillbillyer.dev/"$host"
## ---------------------------------------- ##

## Machine Updates ##
sudo /hill/scripts/update.sh
## ---------------------------------------- ##

## Pihole Update ##
sudo pihole -up
## ---------------------------------------- ##

## NTFY Notification ##
curl -H "Title: $host Pi-Hole" -d "Pi-Hole Update Finished" https://ntfy.hillbillyer.dev/"$host"
## ---------------------------------------- ##

## Intellectual Property ##
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
## ---------------------------------------- ##

sleep 3s
sudo reboot