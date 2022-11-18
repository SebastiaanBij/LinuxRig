#!/bin/bash

sed -i "s/main/main contrib non-free/g" /etc/apt/sources.list

apt update && apt upgrade -y
apt install firmware-realtek \
  firmware-amd-graphics \
  libgl1-mesa-dri \
  libglx-mesa0 \
  mesa-vulkan-drivers \
  xserver-xorg-video-all \
-y
