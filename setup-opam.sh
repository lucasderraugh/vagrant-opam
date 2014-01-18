#!/usr/bin/env bash
set -ex

# Initialize the .opam and .bashrc PATH
opam init -a -y

opam update
opam upgrade

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
EOF
