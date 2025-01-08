#!/bin/bash

clear
echo "   ____                   _              _                   _____           _        _ _           "
echo "  / __ \                 | |            | |                 |_   _|         | |      | | |          "
echo " | |  | |_ __   ___ _ __ | |     ___  __| | __ _  ___ _ __    | |  _ __  ___| |_ __ _| | | ___ _ __ "
echo " | |  | | '_ \ / _ \ '_ \| |    / _ \/ _' |/ _' |/ _ \ '__|   | | | '_ \/ __| __/ _' | | |/ _ \ '__|"
echo " | |__| | |_) |  __/ | | | |___|  __/ (_| | (_| |  __/ |     _| |_| | | \__ \  | (_| | | |  __/ |   "
echo "  \____/| .__/ \___|_| |_|______\___|\__,_|\__, |\___|_|    |_____|_| |_|___/\__\__,_|_|_|\___|_|   "
echo "        | |                                 __/ |                                                   "
echo "        |_|                                |___/                                                    "
echo ""
echo ""
echo "===================================================================================================="

# Update system
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Downloading docker
echo "Downloading docker..."
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Download the ubunto GUI
echo "Downloading the ubuntu GUI..."
sudo apt update
sudo apt install -y libgtk-3-0 libnotify4 libnss3 libxss1 libxtst6 xdg-utils libatspi2.0-0 libsecret-1-0 libgbm1

# Install the necessary packages
echo "Installing the necessary packages..."
sudo apt install -y unzip

# Download the OpenLedger
echo "Downloading OpenLedger..."
wget https://cdn.openledger.xyz/openledger-node-1.0.0-linux.zip

# Install the OpenLedger
echo "Installing OpenLedger..."
unzip openledger-node-1.0.0-linux.zip
sudo dpkg -i openledger-node-1.0.0.deb
sudo apt-get install desktop-file-utils

# set mobaxterm language
echo "Changing mobaxterm language..."
setxkbmap us

# Start OpenLedger
clear
echo "OpenLedger successfully installed"
echo "OpenLedger login page will be open in few minutes..."
echo "===================================================================================================="
openledger-node --no-sandbox

clear
echo "OpenLedger was closen."
echo "Press CRTL+A+D to exit mobaxterm"
echo "To reopen OpenLedger, try 'openledger-node --no-sandbox'"
echo ""
echo "=^_^= Subscribe to my channel: https://t.me/ApeCryptor"
echo "===================================================================================================="