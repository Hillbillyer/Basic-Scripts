#!/bin/sh

## Creating Host Variable ##
clear
host=$(cat /etc/hostname)
## ---------------------------------------- ##

## NTFY Notification ##
curl -H "Title: $host update" -d "Machine Update Start" https://ntfy.hillbillyer.dev/"$host"
## ---------------------------------------- ##

## Machine Updates ##
sudo /hill/scripts/update.sh
## ---------------------------------------- ##

## NTFY Notification ##
curl -H "Title: $host update" -d "Machine Update Complete" https://ntfy.hillbillyer.dev/"$host"
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