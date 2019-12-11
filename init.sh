#!/bin/bash


if [ ! -f .env ]; then
 cp .env_bak .env        #copy .envconfig file
 yum install -y epel-release  docker-ce  docker-compose
 cp docker-compose.yaml /opt/docker-compose.yaml
 echo "/usr/bin/docker-compose -f /opt/docker-compose.yaml up -d" >> /etc/rc.d/rc.local
fi

#stop service
/usr/bin/docker-compose -f /opt/docker-compose.yaml down

#start service
/usr/bin/docker-compose -f /opt/docker-compose.yaml up -d

