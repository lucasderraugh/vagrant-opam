#!/usr/bin/env bash
set -ex

sudo apt-get install emacs -y

export OPAMYES=1
opam install ocp-index ocp-indent
git clone https://github.com/cs3110/tools/
mv tools/.emacs.d/ $HOME/.emacs.d/
echo 'Emacs successfully installed'
