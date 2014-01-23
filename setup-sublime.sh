#!/usr/bin/env bash

set -ex

#Git clone the sublime repo
[ -d sublime-installer ] || git clone https://github.com/TCattd/sublime-text-bash-installer.git sublime-installer

cd sublime-text-bash-installer
sudo ./st3install

cd ~
rm -rf sublime-installer

sudo ln -sf `which sublime` /usr/local/bin/subl

