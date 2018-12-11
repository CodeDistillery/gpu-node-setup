#!/bin/bash

c_name=cadvisor

docker stop ${c_name} && docker rm ${c_name};

docker run \
  --name ${c_name} \
  --restart unless-stopped \
  -v /:/rootfs:ro \
  -v /var/run:/var/run:rw \
  -v /sys:/sys:ro \
  -v /var/lib/docker/:/var/lib/docker:ro \
  -p 8080:8080 \
  -d \
  google/cadvisor
