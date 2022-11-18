#!/bin/bash

read -p "Application Name: " appName
read -p "Application Description" appDescription
read -p "Application Categories (seperated by a ';'): " appCategories
read -p "Application Executable Path: " appExecutablePath
read -p "Application Icon: " appIconPath

typeset -l fileName
fileName=${appName// /-}

if [! -d "/usr/share/applications"]; then
  mkdir -p /usr/share/applications
fi

echo "[Desktop Entry]
Type=Application
Name=${appName}
Comment=${appDescription}
TryExec=${appExecutablePath}
Exec=${appExecutablePath}
Icon=${appIconPath}
Terminal=false
" > /usr/share/applications/${fileName}

chmod +x /usr/share/applications/${fileName}
