#!/bin/bash

#set up timezone
echo "America/New_York" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

#disable the screensaver
sudo apt-get remove -y xscreensaver

#copy .bashrc bash config file
cp 3110-tools/config/bashrc ~/.bashrc

#copy .utoprc here rather than in setup-opam.sh to ensure the 3110-tools dir
#is available
cp 3110-tools/config/utoprc ~/.utoprc
