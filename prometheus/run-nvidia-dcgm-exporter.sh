#!/bin/bash

c_name=nvidia-dcgm-exporter

sudo docker stop ${c_name} > /dev/null && sudo docker rm ${c_name} > /dev/null;

sudo docker run \
  --name ${c_name} \
  --restart unless-stopped \
  --runtime=nvidia \
  -d \
  nvidia/dcgm-exporter
