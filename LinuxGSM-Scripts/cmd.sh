#!/bin/bash

## This is a script to send commands to LinuxGSM Game Servers.
#Define User/Game Server
clear
read -p "
 ██████████           █████                      
░░███░░░░░█          ░░███                       
 ░███  █ ░ ████████  ███████    ██████  ████████ 
 ░██████  ░░███░░███░░░███░    ███░░███░░███░░███
 ░███░░█   ░███ ░███  ░███    ░███████  ░███ ░░░ 
 ░███ ░   █░███ ░███  ░███ ███░███░░░   ░███     
 ██████████████ █████ ░░█████ ░░██████  █████    
░░░░░░░░░░░░░░ ░░░░░   ░░░░░   ░░░░░░  ░░░░░     
 █████  █████                                    
░░███  ░░███                                     
 ░███   ░███  █████   ██████  ████████        ██ 
 ░███   ░███ ███░░   ███░░███░░███░░███      ░░  
 ░███   ░███░░█████ ░███████  ░███ ░░░           
 ░███   ░███ ░░░░███░███░░░   ░███               
 ░░████████  ██████ ░░██████  █████           ██ 
  ░░░░░░░░  ░░░░░░   ░░░░░░  ░░░░░           ░░  
" user

    # Define which server has been selected
    # "csgo" is the user for the account. Replace with whatever you made it.
    if [ "$user" == "csgo" ];
        then
        server="./csgoserver"
    # "doi" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "doi" ];
        then
        server="./doiserver"
    # "fctr" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "fctr" ];
        then
        server="./fctrserver"
    # "gmod" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "gmod" ];
        then
        server="./gmodserver"
    # "inss" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "inss" ];
        then
        server="./inssserver"
    # "l4d2" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "l4d2" ];
        then
        server="./l4d2server"
    # "mc" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "mc" ];
        then
        server="./mcserver"
    # "ns2" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "ns2" ];
        then
        server="./ns2server"
    # "ts3" is the user for the account. Replace with whatever you made it.
    elif [ "$user" == "ts3" ];
        then
        server="./ts3server"
    #If no user is found, this error displays.
    else
        echo "No User matching Selection"

    fi
    \

# Define Desired Command to send to the Game Server
clear
echo "$user Selected"
read -p "
 ██████████           █████                       
░░███░░░░░█          ░░███                        
 ░███  █ ░ ████████  ███████    ██████  ████████  
 ░██████  ░░███░░███░░░███░    ███░░███░░███░░███ 
 ░███░░█   ░███ ░███  ░███    ░███████  ░███ ░░░  
 ░███ ░   █░███ ░███  ░███ ███░███░░░   ░███      
 ██████████████ █████ ░░█████ ░░██████  █████     
░░░░░░░░░░░░░░ ░░░░░   ░░░░░   ░░░░░░  ░░░░░      
   █████████  ██████   ████████████████           
  ███░░░░░███░░██████ ██████░░███░░░░███          
 ███     ░░░  ░███░█████░███ ░███   ░░███       ██
░███          ░███░░███ ░███ ░███    ░███      ░░ 
░███          ░███ ░░░  ░███ ░███    ░███         
░░███     ███ ░███      ░███ ░███    ███          
 ░░█████████  █████     ███████████████         ██
  ░░░░░░░░░  ░░░░░     ░░░░░░░░░░░░░░░         ░░ 
" command
# The commands are based on the specific game's console commands.
\
# "Send" Command using variables previously defined
su - "$user" -c ""$server" send "$command""

clear
#Feel free to remove this if you edit the script.
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
sleep 1s
clear