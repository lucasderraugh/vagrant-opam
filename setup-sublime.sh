#!/usr/bin/env bash

set -ex

#Git clone the sublime repo
git clone https://github.com/TCattd/sublime-text-bash-installer.git

cd sublime-text-bash-installer

sudo ./st3install

echo "Now you have Sublime Text from 3110!"