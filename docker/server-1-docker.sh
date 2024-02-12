#!/bin/bash

## Creating Host Variable ##
clear
host=$(cat /hill/hostname)
## ---------------------------------------- ##

curl -H "Title: $host docker" -d "Stopping & Deleting All Docker Containers & Images" https://ntfy.hillbillyer.dev/"$host"

## Stop All Docker Containers
    sudo docker stop $(docker ps -a -q)
## ---------------------------------------- ##

## Delete All Docker Containers
    sudo docker rm $(docker ps -a -q)
## ---------------------------------------- ##

## Delete All Docker Images
    sudo docker rmi $(docker images -a)
## ---------------------------------------- ##

### CONTAINER CREATION ###

    ## Create NGINX Container
        curl -H "Title: $host docker" -d "Recreating NGINX Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/nginx && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

    ## Create NTFY Container
        curl -H "Title: $host docker" -d "Recreating NTFY Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/ntfy && sudo ./ntfy.sh && cd
    ## ---------------------------------------- ##

sleep 10s

    ## Create Dashy Container
        curl -H "Title: $host docker" -d "Recreating Dashy Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/dashy && sudo docker-compose up -d && cd 
    ## ---------------------------------------- ##

    ## Create Uptime Kuma Container
        curl -H "Title: $host docker" -d "Recreating Uptime Kuma Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/kuma && sudo ./kuma.sh && cd
    ## ---------------------------------------- ##

    ## Create FreshRSS Container
        curl -H "Title: $host docker" -d "Recreating FreshRSS Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/freshrss && sudo ./freshrss.sh && cd
    ## ---------------------------------------- ##

    ## Create Kavita Container
        curl -H "Title: $host docker" -d "Recreating Kavita Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/kavita && sudo ./kavita.sh && cd
    ## ---------------------------------------- ##

    ## Create Homebox Container
        curl -H "Title: $host docker" -d "Recreating Homebox Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/homebox && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

    ## Create Freely Container
        curl -H "Title: $host docker" -d "Recreating Freely Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/freely && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

    ## Create Invidious Container
        curl -H "Title: $host docker" -d "Recreating Invidious Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/invidious && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

    ## Create Invoice Ninja Container
        curl -H "Title: $host docker" -d "Recreating Invoice Ninja Container" https://ntfy.hillbillyer.dev/"$host"
        cd /home/andrew/ninja && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

curl -H "Title: $host docker" -d "All Containers Up & Running" https://ntfy.hillbillyer.dev/"$host"

sleep 3s
sudo reboot