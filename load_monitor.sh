#! /bin/bash

ls /dev/i2c-*
zgrep CONFIG_I2C_CHARDEV /proc/config.gz
lsmod|grep i2c_dev
sudo modprobe i2c_dev

sudo ddcutil detect --verbose
