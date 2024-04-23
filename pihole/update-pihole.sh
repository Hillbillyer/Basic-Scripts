#!/bin/bash

## Creating Host Variable ##
clear
host=$(cat /hostname)
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

## Pihole Gravity Update ##
sudo pihole updateGravity
## ---------------------------------------- ##

## Unbound Update Root Hints ##
wget https://www.internic.net/domain/named.root -qO- | sudo tee /var/lib/unbound/root.hints
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