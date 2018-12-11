#!/bin/bash
docker run \
  --name nvidia-dcgm-exporter \
  --restart unless-stopped \
  --runtime=nvidia \
  -d \
  nvidia/dcgm-exporter
