#!/bin/bash

echo "Updating & Upgrading Packages..."
apt update && apt upgrade -y

echo "Downloading & Executing Firmware Script..."
curl -s "https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/firmware-install.sh" | bash

echo "Prepping Reboot Continuation..."
echo "curl -s 'https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/setup/setup-rig-continuation.sh' | bash" >> /root/.profile

echo "Rebooting..."
reboot now
