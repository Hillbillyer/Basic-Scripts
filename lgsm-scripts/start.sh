#!/bin/bash

##Script to Stop All Game Servers
clear
echo "
  █████████                                                         
 ███░░░░░███                                                        
░███    ░░░   ██████  ████████  █████ █████ ██████  ████████        
░░█████████  ███░░███░░███░░███░░███ ░░███ ███░░███░░███░░███       
 ░░░░░░░░███░███████  ░███ ░░░  ░███  ░███░███████  ░███ ░░░        
 ███    ░███░███░░░   ░███      ░░███ ███ ░███░░░   ░███            
░░█████████ ░░██████  █████      ░░█████  ░░██████  █████           
 ░░░░░░░░░   ░░░░░░  ░░░░░        ░░░░░    ░░░░░░  ░░░░░            
  █████████  █████                       █████                      
 ███░░░░░███░░███                       ░░███                       
░███    ░░░ ███████   ██████  ████████  ███████  █████ ████████████ 
░░█████████░░░███░   ░░░░░███░░███░░███░░░███░  ░░███ ░███░░███░░███
 ░░░░░░░░███ ░███     ███████ ░███ ░░░   ░███    ░███ ░███ ░███ ░███
 ███    ░███ ░███ ██████░░███ ░███       ░███ ███░███ ░███ ░███ ░███
░░█████████  ░░█████░░█████████████      ░░█████ ░░████████░███████ 
 ░░░░░░░░░    ░░░░░  ░░░░░░░░░░░░░        ░░░░░   ░░░░░░░░ ░███░░░  
                                                           ░███     
                                                           █████    
                                                          ░░░░░     
"
sleep 3s
clear

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
    # "cs2" is the user for the account. Replace with whatever you made it.
    if [ "$user" == "cs2" ];
        then
        server="./cs2server"
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
        start-all

    fi
    \

# Initiate the Send Command to the Desired Server
su - "$user" -c ""$server" start "

#Finished
echo "
  █████████                                                        
 ███░░░░░███                                                       
░███    ░░░   ██████  ████████  █████ █████ ██████  ████████ █████ 
░░█████████  ███░░███░░███░░███░░███ ░░███ ███░░███░░███░░█████░░  
 ░░░░░░░░███░███████  ░███ ░░░  ░███  ░███░███████  ░███ ░░░░█████ 
 ███    ░███░███░░░   ░███      ░░███ ███ ░███░░░   ░███    ░░░░███
░░█████████ ░░██████  █████      ░░█████  ░░██████  █████   ██████ 
 ░░░░░░░░░   ░░░░░░  ░░░░░        ░░░░░    ░░░░░░  ░░░░░   ░░░░░░  
    ███████             ████  ███                                  
  ███░░░░░███          ░░███ ░░░                                   
 ███     ░░███ ████████ ░███ ████ ████████    ██████               
░███      ░███░░███░░███░███░░███░░███░░███  ███░░███              
░███      ░███ ░███ ░███░███ ░███ ░███ ░███ ░███████               
░░███     ███  ░███ ░███░███ ░███ ░███ ░███ ░███░░░                
 ░░░███████░   ████ ██████████████████ █████░░██████               
   ░░░░░░░    ░░░░ ░░░░░░░░░░░░░░░░░░ ░░░░░  ░░░░░░                
"
sleep 3s
clear