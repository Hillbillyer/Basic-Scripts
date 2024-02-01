#!/bin/bash

## Script to Update Server
clear
    # Create Host Variable for Machine
    host=$(cat /etc/hostname)
    echo "$host"
clear

## Discord Notification Start
export WEBHOOK_URL="https://discord.com/api/webhooks/1202408436030111844/78rpiKohk3QDJdgxx50JOHaDRGioDxnEp_SzIb_njUuKhvn3iVTC_ZrmwablNR9hIRN4"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "$host has started Updating!"}' \
  $WEBHOOK_URL

    # Update package lists
    sudo NEEDRESTART_MODE=a apt update -y

    # Upgrade installed packages
    sudo NEEDRESTART_MODE=a apt upgrade -y

    # Upgrade the distribution (including the OS)
    sudo NEEDRESTART_MODE=a apt dist-upgrade -y

    # Remove unnecessary files
    sudo NEEDRESTART_MODE=a apt autoremove -y
    sudo NEEDRESTART_MODE=a apt clean -y

## Discord Notification End
export WEBHOOK_URL="https://discord.com/api/webhooks/1202408436030111844/78rpiKohk3QDJdgxx50JOHaDRGioDxnEp_SzIb_njUuKhvn3iVTC_ZrmwablNR9hIRN4"
curl \
  -H "Content-Type: application/json" \
  -d '{"username": "Hacker Man", "content": "$host has finished Updating!"}' \
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