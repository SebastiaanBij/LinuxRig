#!/bin/bash

echo "Downloading & Executing KDE Script..."
curl -s "https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/kde-install.sh" | bash

echo "Clean Up..."
sed -i "s/curl -s 'https://raw.githubusercontent.com/SebastiaanBij/LinuxRig/debian-bullseye/setup/setup-rig-continuation.sh' | bash//" /root/.profile

echo "Setup Done! Enjoy your new system. The reboot will commense in 3 seconds..."
sleep 3s
reboot now
