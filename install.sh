#!/bin/bash -       
#Title: Subliminal Installer
#Description: Installs subliminal and adds context menu entry to pantheon files
#============================

array=(fr it es pt pt-br)

sudo apt-get install python-pip -y
sudo pip install subliminal --upgrade


ans=$(zenity --entry --title "Enter desired language" --text "Insert your choice." --entry-text "en" "${array[@]}" ); echo $ans

append="Exec=subliminal download -l $ans -s -f %U"

cp subliminal-download.contract subliminal-download.contract.tmp
echo $append >> subliminal-download.contract.tmp
sudo cp subliminal-download.contract.tmp /usr/share/contractor/subliminal-download.contract

rm subliminal-download.contract.tmp

notify-send "Contract added"
