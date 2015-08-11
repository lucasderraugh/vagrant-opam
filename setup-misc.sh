#!/bin/bash

#set up timezone
echo "America/New_York" | sudo tee /etc/timezone
sudo dpkg-reconfigure --frontend noninteractive tzdata

#disable the screensaver
sudo apt-get remove -y xscreensaver
