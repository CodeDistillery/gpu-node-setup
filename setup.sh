#!/bin/bash

NVIDIA_DRIVER_VERSION=410

sudo add-apt-repository ppa:graphics-drivers/ppa \
&& sudo apt update \
&& sudo apt upgrade -y \
&& sudo apt install -y cifs-utils build-essential landscape-client nvidia-driver-${NVIDIA_DRIVER_VERSION} \

sudo mkdir /mnt/tuuli-public && sudo mount -a
