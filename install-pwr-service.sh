#!/bin/bash

echo "Start installing the power management service..."

sudo cp -f ./xPWR.sh                /usr/local/bin/
sudo cp -f x715-pwr.service             /lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable x715-pwr
sudo systemctl start x715-pwr

echo "Power management service installed"