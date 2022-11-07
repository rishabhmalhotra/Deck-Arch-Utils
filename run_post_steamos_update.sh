#! /bin/bash

sudo steamos-readonly disable
sudo pacman-key --init  && sudo pacman-key --populate

sudo pacman -S networkmanager-openvpn
sudo pacman -S ddcutil

./load_monitor.sh
