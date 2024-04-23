#!/bin/bash

curl -H "Title: Restart-Game-Server" -d "Restarting Palworld Game Server" https://ntfy.ahillier.dev/game-server

##Script to Restart All Game Servers
	sudo su - pw -c "./pwserver restart"
clear

curl -H "Title: Game-Server" -d "All Game Servers Up & Running" https://ntfy.ahillier.dev/game-server
clear

#Feel free to remove this if you modify the script.
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