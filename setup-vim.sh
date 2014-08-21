#!/usr/bin/env bash
set -ex

sudo apt-get install -y vim vim-gtk

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

cp 3110-tools/config/vimrc ~/.vimrc