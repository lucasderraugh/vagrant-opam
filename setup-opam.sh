#!/bin/bash

# MRC: The next line is mostly from https://github.com/realworldocaml/book/wiki/Installation-Instructions
sudo apt-get install -y curl build-essential m4 zlib1g-dev libssl-dev ocaml ocaml-native-compilers opam camlp4-extra zip

export OPAMYES=1
export OPAMJOBS=2

opam init -a -y
eval `opam config env`
opam switch 4.01.0
eval `opam config env`

opam install async utop merlin pa_ounit qcheck 

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
#require "core.top";;
#require "core.syntax";;
EOF

cat >> ~/.bashrc <<EOF

alias ocaml=utop

EOF

