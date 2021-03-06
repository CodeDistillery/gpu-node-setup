#!/bin/bash

c_name=cadvisor

sudo docker stop ${c_name} > /dev/null &&  sudo docker rm ${c_name} > /dev/null;

sudo docker run \
  --name ${c_name} \
  --restart unless-stopped \
  -v /:/rootfs:ro \
  -v /var/run:/var/run:rw \
  -v /sys:/sys:ro \
  -v /var/lib/docker/:/var/lib/docker:ro \
  -p 9102:8080 \
  -d \
  google/cadvisor
