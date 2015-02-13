#!/usr/bin/env bash

set -ex

## Download and install Sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

## Add the alias to the bashrc
echo "alias sublime=sublime-text-3" >> $HOME/.bashrc

## Copy default settings from the 3110-tools repository
cp 3110-tools/config/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
