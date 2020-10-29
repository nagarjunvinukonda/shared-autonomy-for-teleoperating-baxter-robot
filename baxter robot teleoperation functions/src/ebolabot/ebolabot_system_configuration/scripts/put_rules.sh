#! /bin/sh
sudo mkdir -p /etc/usb_modeswitch.d
sudo ln -sf $PWD/../usb/* /etc/usb_modeswitch.d/ 

sudo ln -sf $PWD/../udev/* /etc/udev/rules.d/
sudo udevadm control --reload && sudo udevadm trigger


