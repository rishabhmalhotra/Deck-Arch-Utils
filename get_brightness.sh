#! /bin/bash

./load_monitor.sh > /dev/null
sudo ddcutil --bus 7 getvcp 10
