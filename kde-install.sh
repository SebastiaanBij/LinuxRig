#!/bin/bash

apt update && apt upgrade -y
tasksel install desktop \
  kde-desktop
systemctl set-default graphical.target
