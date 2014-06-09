#!/usr/bin/env bash
set -ex

## Installs Emacs 24 (apt currently has 23 by default)
sudo add-apt-repository ppa:cassou/emacs
sudo apt-get update
sudo apt-get install emacs24 emacs24-e1 emacs24-common-non-dfsg

export OPAMYES=1
opam install ocp-index ocp-indent
[ -d 3110-tools ] || git clone git@github.com:cs3110/tools.git 3110-tools
[ -d 3110-tools ] || cp -rT 3110-tools/emacs/ $HOME/.emacs.d/
echo 'Emacs successfully installed'
