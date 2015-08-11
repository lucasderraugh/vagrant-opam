#!/bin/bash

# Using a PPA for ocaml and opam, as the official Ubutnu ones tend to lag behind significantly.
# https://opam.ocaml.org/doc/Install.html
sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update

# MRC: The next line is mostly from https://github.com/realworldocaml/book/wiki/Installation-Instructions
sudo apt-get install -y curl build-essential m4 zlib1g-dev libssl-dev ocaml ocaml-native-compilers opam camlp4-extra zip

export OPAMYES=1
export OPAMJOBS=2

opam init -a -y
eval `opam config env`
opam switch 4.02.1
eval `opam config env`

opam install async utop merlin pa_ounit qcheck lwt

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

