#!/bin/bash

echo '
##CUSTOM ALIASES
alias update="sudo ./hills-scripts/lgsm/game-update.sh"
alias start="sudo ./hills-scripts/lgsm/start.sh"
alias start-all="sudo ./hills-scripts/lgsm/start-all.sh"
alias stop="sudo ./hills-scripts/lgsm/stop.sh"
alias cmd="sudo ./hills-scripts/lgsm/cmd.sh"
' >> ~/.bashrc

source ~/.bashrc