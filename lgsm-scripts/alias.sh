#!/bin/bash

echo '
##CUSTOM ALIASES
alias update="sudo .Basic-Scripts/LinuxGSM-Scripts/game-update.sh"
alias start="sudo ./start.sh"
alias start-all="sudo ./start-all.sh"
alias stop="sudo ./stop.sh"
alias cmd="sudo ./cmd.sh"
' >> ~/.bashrc

source ~/.bashrc