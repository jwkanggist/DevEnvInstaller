#! /bin/bash
# Remove all nvidia related packages
sudo apt-get --purge remove nvidia-* 
 
# Nvidia driver Installation
# install nvidia driver
add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-375 #recent version at 2017 June
reboot

