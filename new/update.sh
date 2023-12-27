#!/bin/sh

## Script to Update Server
clear
    # Create Host Variable for Machine
    host=$(cat /etc/hostname)
    echo "$host"
clear
## NTFY Notification Start
curl -H "Title: $host Machine Update" -H "Markdown: yes" -d "$host Machine Update Initiated" https://ntfy.ahillier.dev/"$host"

    # Update package lists
    sudo NEEDRESTART_MODE=a apt update -y

    # Upgrade installed packages
    sudo NEEDRESTART_MODE=a apt upgrade -y

    # Upgrade the distribution (including the OS)
    sudo NEEDRESTART_MODE=a apt dist-upgrade -y

    # Remove unnecessary files
    sudo NEEDRESTART_MODE=a apt autoremove -y
    sudo NEEDRESTART_MODE=a apt clean -y

## NTFY Notification End
curl -H "Title: $host Machine Update" -H "Markdown: yes" -d "$host Machine Update Complete" https://ntfy.ahillier.dev/"$host"

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
echo "contact@hillbillyer.net