#!/bin/bash

# Uninstall x715-fan.service:
sudo systemctl stop x715-fan
sudo systemctl disable x715-fan
file_path="/lib/systemd/system/x715-fan.service"
if [ -f "$file_path" ]; then
    sudo rm -f "$file_path"
fi

file_path="/usr/local/bin/x715-fan.sh"
if [ -f "$file_path" ]; then
    sudo rm -f "$file_path"
fi

# Uninstall x715-pwr.service
sudo systemctl stop x715-pwr
sudo systemctl disable x715-pwr
file_path="/lib/systemd/system/x715-pwr.service"
if [ -f "$file_path" ]; then
    sudo rm -f "$file_path"
fi

file_path="/usr/local/bin/xPWR.sh"
if [ -f "$file_path" ]; then
    sudo rm -f "$file_path"
fi

# Remove the xoff allias on .bashrc file
sudo sed -i '/x715off/d' ~/.bashrc
source ~/.bashrc

file_path="/usr/local/bin/xSoft.sh"
if [ -f "$file_path" ]; then    
    sudo rm -f "$file_path"    
fi

# Remove the configuratoin of config.txt
sudo sed -i '/dtoverlay=pwm-2chan/d' /boot/firmware/config.txt
