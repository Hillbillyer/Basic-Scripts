#!/bin/bash

wget -O hills-scripts/lgsm/serverlist.csv https://raw.githubusercontent.com/GameServerManagers/LinuxGSM/master/lgsm/data/serverlist.csv
clear

servers=()
while IFS="," read shortname gameservername gamename os;

do 
    servers+=("$gamename")

done <  <(tail -n +2 hills-scripts/lgsm/serverlist.csv)



PS3='Please enter your choice: '
select opt in "${servers[@]}";
do
    # Counter-Strike 2
    if [ "$REPLY" == "Counter-Strike 2" ];
    then
    echo "Installing Dependencies"
        sleep 3s
        clear
        sudo dpkg --add-architecture i386; sudo apt update; sudo apt install curl wget file tar bzip2 gzip unzip bsdmainutils python3 util-linux ca-certificates binutils bc jq tmux netcat lib32gcc-s1 lib32stdc++6 libsdl2-2.0-0:i386 steamcmd
        sleep 3s
        clear
    echo "Installing Counter-Strike 2"
        sleep 3s
        clear
        username=cs2
        read -p "Choose a Password for cs2: " password
        sudo adduser --gecos "cs2" --disabled-password $username
        sudo chpasswd <<<"$username:$password"
        su - $username -c "wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh cs2server"
        su - $username -c "./cs2server auto-install"
    fi
    # case $opt in 
    #     "Assetto Corsa")
    #         echo "you chose choice 1"
    #         ;;
    #     "Option 2")
    #         echo "you chose choice 2"
    #         ;;
    #     "Option 3")
    #         echo "you chose choice $REPLY which is $opt"
    #         ;;
    #     "Quit")
    #         break
    #         ;;
    #     *) echo "invalid option $REPLY";;
    # esac
done
