#!/bin/bash

echo '
##CUSTOM ALIASES
alias update="sudo ./game-update.sh"
alias start="sudo ./start.sh"
alias stop="sudo ./stop.sh"
alias cmd="sudo ./cmd.sh"Scripts
' >> ~/.bashrc

source ~/.bashrc