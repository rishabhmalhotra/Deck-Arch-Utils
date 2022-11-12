#! /bin/bash

./load_monitor.sh > /dev/null
sudo ddcutil --bus 7 setvcp 10 $1
