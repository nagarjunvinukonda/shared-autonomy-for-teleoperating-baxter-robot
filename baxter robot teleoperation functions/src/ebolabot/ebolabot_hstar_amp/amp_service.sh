#! /bin/sh

sudo rm -f /etc/sytemd/system/amp.service
sudo ln -sf $PWD/amp_bringup/amp.service /etc/systemd/system


