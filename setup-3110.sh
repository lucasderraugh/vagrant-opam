#!/bin/bash

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

# MRC:  we should be picking up the opam environment from .bashrc, but
#  for some reason the eval below seems to be necessary to build the
#  3110-tools.
eval `opam config env`

make -C 3110-tools/cs3110-cli/
make -C 3110-tools/cs3110-cli/ install

