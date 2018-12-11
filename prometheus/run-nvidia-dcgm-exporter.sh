#!/bin/bash

c_name=nvidia-dcgm-exporter

docker stop ${c_name} > /dev/null && docker rm ${c_name} > /dev/null;

docker run \
  --name ${c_name} \
  --restart unless-stopped \
  --runtime=nvidia \
  -d \
  nvidia/dcgm-exporter
