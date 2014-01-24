#!/usr/bin/env bash

set -ex

## Download and install Sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

## Add the alias to the bashrc
echo "alias sublime=sublime-text-3" >> $HOME/.bashrc

echo "Now you have Sublime Text from 3110!"
