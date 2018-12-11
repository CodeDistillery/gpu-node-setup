#!/bin/bash
docker run \
  --name node-exporter \
  --restart unless-stopped \
  -d \
  --net="host" --pid="host" \
  -v /:/host:ro,rslave \
  --volumes-from nvidia-dcgm-exporter:ro \
  quay.io/prometheus/node-exporter \
     --path.rootfs /host \
     --collector.textfile.directory="/run/prometheus"
