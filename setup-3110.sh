#!/bin/bash

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

# 2014-08-21 update: need references to stuff in opam (like corebuild)
eval `opam config env`

make -C 3110-tools/cs3110-cli/
make -C 3110-tools/cs3110-cli/ install

