#!/bin/bash

## Creating Host Variable
clear
    host=$(cat /etc/hostname)

## Discord Notification Start
export WEBHOOK_URL="https://discord.com/api/webhooks/1202411890106564709/pbpcKw6XvUpVRDjmpr4QiGSfV8p-6VeqdE8nvWQfhPKfwUVWU3VYrPPvULM_VJJyuLia"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "'$host' has started Updating!"}' \
  $WEBHOOK_URL

#Machine Updates
sudo /hill/scripts/update.sh

## Discord Notification End
export WEBHOOK_URL="https://discord.com/api/webhooks/1202411890106564709/pbpcKw6XvUpVRDjmpr4QiGSfV8p-6VeqdE8nvWQfhPKfwUVWU3VYrPPvULM_VJJyuLia"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "'$host' has finished Updating!"}' \
  $WEBHOOK_URL

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