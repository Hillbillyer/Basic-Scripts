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
    ## Create Dashy Container
        cd /home/andrew/dashy && sudo docker-compose up -d && cd 
        ## ---------------------------------------- ##

    ## Create Uptime Kuma Container
        sudo ./home/andrew/kuma/kuma.sh
        ## ---------------------------------------- ##

    ## Create FreshRSS Container
        sudo ./home/andrew/freshrss/freshrss.sh
        ## ---------------------------------------- ##

    ## Create NTFY Container
        sudo ./home/andrew/ntfy/ntfy.sh
        ## ---------------------------------------- ##

    ## Create Kavita Container
        sudo ./home/andrew/kavita/kavita.sh
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

    ## Create Trilium Container
        cd /home/andrew/trilium && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##

    ## Create Invoice Ninja Container
        cd /home/andrew/ninja && sudo docker-compose up -d && cd
        ## ---------------------------------------- ##