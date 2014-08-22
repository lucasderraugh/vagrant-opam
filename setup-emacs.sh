#!/bin/bash

sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

opam install -y ocp-index ocp-indent

[ -d 3110-tools ] || git clone git@github.com:cs3110/tools.git 3110-tools

cp -rT 3110-tools/emacs/ $HOME/.emacs.d/


