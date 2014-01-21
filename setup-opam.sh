#!/usr/bin/env bash
set -ex

sudo apt-get install -y \
  ocaml ocaml-native-compilers camlp4 camlp4-extra opam

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

grep "opam config" ~/.bashrc > /dev/null || cat >> ~/.bashrc <<EOF

# opam config
eval \`opam config env\`

EOF 

