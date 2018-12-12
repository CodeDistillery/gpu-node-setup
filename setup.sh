#!/bin/bash

sudo apt update \
&& sudo apt upgrade -y \
&& sudo apt install -y cifs-utils build-essential landscape-client
