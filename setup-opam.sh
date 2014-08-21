#!/bin/bash

# MRC: The next line is from https://github.com/realworldocaml/book/wiki/Installation-Instructions
sudo apt-get install -y curl build-essential m4 zlib1g-dev libssl-dev ocaml ocaml-native-compilers opam
# MRC: The next line is a package we used to install, and I'll leave out for now.
# sudo apt-get install -y camlp4-extra

export OPAMYES=1
export OPAMJOBS=2
opam init -a -y
eval `opam config env`
opam switch 4.01.0
eval `opam config env`

opam install core utop pa_ounit qcheck 

# MRC: Leaving these out for now
# opam install async merlin

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
#require "core.top";;
#require "core.syntax";;
EOF
