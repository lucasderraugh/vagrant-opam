#!/usr/bin/env bash
set -ex

sudo apt-get install -y emacs

export OPAMYES=1
opam install ocp-index ocp-indent
[ -d 3110-tools ] || git clone git@github.com:cs3110/tools.git 3110-tools
[ -d 3110-tools ] || cp -rT 3110-tools/.emacs.d/ $HOME/.emacs.d/
echo 'Emacs successfully installed'
