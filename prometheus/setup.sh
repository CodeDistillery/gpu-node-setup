#!/bin/bash

curdir=$(dirname "$0")

${curdir}/run-nvidia-dcgm-exporter \
&& ${curdir}/run-node-exporter
