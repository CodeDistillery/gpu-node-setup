#!/bin/bash
docker run \
  --name node-exporter \
  --restart unless-stopped \
  --net="host" --pid="host" \
  --volumes-from nvidia-dcgm-exporter:ro \
  -v /:/host:ro,rslave \
  -d \
  quay.io/prometheus/node-exporter \
     --path.rootfs /host \
     --collector.textfile.directory="/run/prometheus"
