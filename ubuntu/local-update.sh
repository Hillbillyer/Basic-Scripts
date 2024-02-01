#!/bin/bash

## Creating Host Variable ##
clear
host=$(cat /etc/hostname)
## ---------------------------------------- ##

## Discord Notification ##
export WEBHOOK_URL="https://discord.com/api/webhooks/1202410026367455292/lOo50UlEEdfr48-a1wdppo30HOQGIWtEb5D9POVxYknK9QuXiFdIm3zp0JRFtTYLqRF9"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "'$host' has started Updating!"}' \
  $WEBHOOK_URL
## ---------------------------------------- ##

#Machine Updates ##
sudo /hill/scripts/update.sh
## ---------------------------------------- ##

## Discord Notification ##
export WEBHOOK_URL="https://discord.com/api/webhooks/1202410026367455292/lOo50UlEEdfr48-a1wdppo30HOQGIWtEb5D9POVxYknK9QuXiFdIm3zp0JRFtTYLqRF9"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "'$host' has finished Updating!"}' \
  $WEBHOOK_URL
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