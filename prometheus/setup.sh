#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source ${__dir}/run-nvidia-dcgm-exporter.sh \
&& source ${__dir}/run-node-exporter.sh
