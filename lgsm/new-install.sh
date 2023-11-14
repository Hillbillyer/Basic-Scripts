#!/bin/bash

wget -O hills-scripts/lgsm/serverlist.csv https://raw.githubusercontent.com/GameServerManagers/LinuxGSM/master/lgsm/data/serverlist.csv
clear

servers=()
while IFS="," read shortname gameservername gamename os;

do 
    servers+=("$gamename")

done <  <(tail -n +2 hills-scripts/lgsm/serverlist.csv)



PS3='--Type "quit" to exit the Script--
Please enter your choice: '
select opt in "${servers[@]}" "quit";
do
    case $opt in 
        "quit")
            echo "Exiting the script."
            break
            ;;
        *)
            clear
            echo " $opt <-- Selected
            
            "
            # Add your custom actions based on the selected server here

            echo "Installing Dependencies"
            sleep 3s
            clear
                sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd speex:i386 libtbb2 -y
            sleep 3s
            clear
            echo "Installing $opt"
            sleep 3s
            clear
            username=${server_info["$opt"]}
            read -p "Choose a Password for ${server_info["$opt"]}: " password
            sudo adduser --gecos "${server_info["$opt"]}" --disabled-password $username
            sudo chpasswd <<<"$username:$password"
            su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh '$username'server"
            su - $username -c "./'$username'server update-lgsm"
            clear
            read -p "
            Enter your Steam Username: 
            
            --This is for Game Servers that require Steam Authentication.--
            --Feel free to press Enter and leave blank if unneccessary.-- 
            " steamusername
            clear
            read -p "Enter your Steam Password: " steampassword
            echo -e "steamuser=$steamusername\nsteampass=$steampassword" >> /home/"$username"/lgsm/config-lgsm/"$username"server/common.cfg
            su - $username -c "./'$username'server auto-install"

            ;;
    esac
done
