#!/bin/bash

c_name=node-exporter

docker stop ${c_name} > /dev/null && docker rm ${c_name} > /dev/null;

docker run \
  --name ${c_name} \
  --restart unless-stopped \
  --net="host" --pid="host" \
  --volumes-from nvidia-dcgm-exporter:ro \
  -v /:/host:ro,rslave \
  -d \
  quay.io/prometheus/node-exporter \
     --path.rootfs /host \
     --collector.textfile.directory="/run/prometheus"
