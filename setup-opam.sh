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
opam switch 4.02.3
eval `opam config env`

# Use the cs3110 fork of utop
opam pin add utop https://github.com/cs3110/utop.git

opam install async utop merlin pa_ounit qcheck lwt menhir

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#require "pa_ounit";;
#directory "_build";;
#thread;;
#camlp4o;;
EOF

cat >> ~/.bashrc <<EOF

alias ocaml=utop

EOF
