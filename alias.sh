#!/bin/bash

sed -i '/##CUSTOM ALIASES/,/^$/d' ~/.bashrc

echo "
##CUSTOM ALIASES
alias update='sudo /hill/scripts/update.sh'
alias install-lgsm='sudo /hill/scripts/linuxgsm/install-lgsm.sh'
alias update-lgsm='sudo /hill/scripts/linuxgsm/update-lgsm.sh'
alias start-lgsm='sudo /hill/scripts/linuxgsm/start-lgsm.sh'
alias stop-lgsm='sudo /hill/scripts/linuxgsm/stop-lgsm.sh'
alias update-pihole='sudo /hill/scripts/pihole/update-pihole.sh'
" >> ~/.bashrc