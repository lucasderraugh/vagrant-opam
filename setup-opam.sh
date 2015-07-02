#!/bin/bash

# MRC: The next line is mostly from https://github.com/realworldocaml/book/wiki/Installation-Instructions
sudo apt-get install -y curl build-essential m4 zlib1g-dev libssl-dev zip 

# MRC: The next line is from the OPAM website [https://opam.ocaml.org/doc/Install.html]
sudo apt-get install -y ocaml ocaml-native-compilers camlp4-extra opam 

export OPAMYES=1
export OPAMJOBS=2

opam init -a -y
eval `opam config env`
opam switch 4.02.2
eval `opam config env`

opam install -y async utop merlin pa_ounit qcheck 

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

