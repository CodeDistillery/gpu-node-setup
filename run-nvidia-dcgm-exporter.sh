#!/bin/bash
docker run --name nvidia-dcgm-exporter --restart unless-stopped -d --runtime=nvidia --name=nvidia-dcgm-exporter nvidia/dcgm-exporter
