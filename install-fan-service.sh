#!/bin/bash

echo "Start installing fan service..."

#Change the PWM_CHIP_PATH to /sys/class/pwm/pwmchip2 on line 7 of x715fan.sh if you use it on Raspberry Pi 5 hardware.
sudo cp -f ./x715-fan.sh                /usr/local/bin/
sudo cp -f ./x715-fan.service           /lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable x715-fan
sudo systemctl start x715-fan

echo "Fan service installed"