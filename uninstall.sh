#!/bin/bash -       
#Title: Uninstall Subtitle downloader
#Description: Removes subliminal contract
#============================

echo "Removing subliminal"  
sudo pip uninstall subliminal -y
echo "Removing python-pip"  
sudo apt-get purge python-pip
sudo rm /usr/share/contractor/subliminal-download.contract
notify-send "Contract removed"
