#! /bin/bash
 
echo "Do you have the SD card inserted into the Deck anmd formatted from within the steam gaming mode? [Y,n]" 

read userinput

if [[ $userinput == "Y" || $userinput == "y" || $userinput == "yes" || $userinput == "Yes" || $userinput == "YES" ]]; then
        echo "Verifying SD card details, pls wait for the process to finish and do NOT manually cancel"
        sudo apt-get install f3
        sudo f3probe --destructive --time-ops /dev/mmcblk0
else
        echo "Please go into gaming mode. Then, insert your new SD Card into the deck and format using the usual process. Then return here and re-run this script once the device recognizes there is a card inserted."
fi
