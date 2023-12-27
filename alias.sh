#!/bin/bash

sed -i '/##CUSTOM ALIASES/,/^$/d' ~/.bashrc

echo "
##CUSTOM ALIASES
alias update='sudo /hill/scripts/update.sh'
alias update-lgsm='sudo /hill/scripts/linuxgsm/update-lgsm.sh'
alias start-all='sudo /hill/scripts/linuxgsm/start-all.sh'
alias update-pihole='sudo /hill/scripts/pihole/update-pihole.sh'
" >> ~/.bashrc

source ~/.bashrc