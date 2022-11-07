#! /bin/bash

# Set a psswd for user first in system settings
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S vi
