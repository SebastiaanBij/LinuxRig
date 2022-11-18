#!/bin/bash

echo "Updating & Upgrading Packages..."
apt update && apt upgrade -y

echo "Downloading & Installing CURL..."
apt install curl -y

echo "Downloading & Executing Firmware Script..."
curl -s "https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/firmware-install.sh" | bash

echo "Prepping Reboot Continuation..."
echo "curl -s 'https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/kde-install.sh' | bash"

echo "Rebooting..."
reboot now
