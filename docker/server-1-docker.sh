#!/bin/bash

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
        cd /home/andrew/nginx && sudo docker-compose up -d && cd
    ## ---------------------------------------- ##

    ## Create Dashy Container
        cd /home/andrew/dashy && sudo docker-compose up -d && cd 
        ## ---------------------------------------- ##

    ## Create Uptime Kuma Container
        cd /home/andrew/kuma && sudo ./kuma.sh && cd
        ## ---------------------------------------- ##

    ## Create FreshRSS Container
        cd /home/andrew/freshrss && sudo ./freshrss.sh && cd
        ## ---------------------------------------- ##

    ## Create NTFY Container
        cd /home/andrew/ntfy && sudo ./ntfy.sh && cd
        ## ---------------------------------------- ##

    ## Create Kavita Container
        cd /home/andrew/kavita && sudo ./kavita.sh && cd
        ## ---------------------------------------- ##

    ## Create Homebox Container
        cd /home/andrew/homebox && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##

    ## Create Freely Container
        cd /home/andrew/freely && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##

    ## Create Invidious Container
        cd /home/andrew/invidious && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##

    ## Create Invoice Ninja Container
        cd /home/andrew/ninja && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##

sleep 3s
sudo reboot