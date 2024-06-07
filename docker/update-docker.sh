#!/bin/bash
## Dashy
cd dashy
sudo docker-compose down
## Firefly
cd firefly
sudo docker-compose down
## Write Freely
cd freely
sudo docker-compose down
## FreshRSS
cd freshrss
sudo docker-compose down
## Homebox
cd homebox
sudo docker-compose down
## Invidious
cd invidious
sudo docker-compose down
## Kavita
cd kavita
sudo docker-compose down
## NGINX Proxy Manager
cd nginx
sudo docker-compose down
## Invoice Ninja
cd ninja
sudo docker-compose down
## Stirling PDF
cd stirlingpdf
sudo docker-compose down
## Uptime-Kuma
cd kuma
sudo docker-compose down
## NTFY
cd ntfy
sudo docker-compose down
## --------------------------------------------------------
sudo docker system prune --all -f
## --------------------------------------------------------
## NTFY
cd ntfy
sudo docker-compose up -d --force-recreate
## Uptime-Kuma
cd kuma
sudo docker-compose up -d --force-recreate
## Dashy
cd dashy
sudo docker-compose up -d --force-recreate
## Firefly
cd firefly
sudo docker-compose up -d --force-recreate
## Write Freely
cd freely
sudo docker-compose up -d --force-recreate
## FreshRSS
cd freshrss
sudo docker-compose up -d --force-recreate
## Homebox
cd homebox
sudo docker-compose up -d --force-recreate
## Invidious
cd invidious
sudo docker-compose up -d --force-recreate
## Kavita
cd kavita
sudo docker-compose up -d --force-recreate
## NGINX Proxy Manager
cd nginx
sudo docker-compose up -d --force-recreate
## Invoice Ninja
cd ninja
sudo docker-compose up -d --force-recreate
## Stirling PDF
cd stirlingpdf
sudo docker-compose up -d --force-recreate