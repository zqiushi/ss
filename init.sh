#!/bin/bash


if [ ! -f .env ]; then
 cp .env_bak .env        #copy .envconfig file
 echo "docker-compose -f /opt/docker-compose.yaml up -d" >> /etc/rc.d/rc.local
 ln -s docker-compose.yaml /opt/docker-compose.yaml
 yum install -y docker docker-compose
fi

#stop service
docker-compose -f /opt/docker-compose.yaml down

#start service
docker-compose -f /opt/docker-compose.yaml up -d

