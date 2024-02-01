#!/bin/bash

    # Update package lists
    sudo NEEDRESTART_MODE=a apt update -y

    # Upgrade installed packages
    sudo NEEDRESTART_MODE=a apt upgrade -y

    # Upgrade the distribution (including the OS)
    sudo NEEDRESTART_MODE=a apt dist-upgrade -y

    # Remove unnecessary files
    sudo NEEDRESTART_MODE=a apt autoremove -y
    sudo NEEDRESTART_MODE=a apt clean -y