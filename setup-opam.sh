#!/usr/bin/env bash
set -ex

sudo apt-get install opam

export OPAMYES=1
export OPAMJOBS=2

# Initialize the .opam and .bashrc PATH
opam init -a -y

opam update
opam upgrade

opam install merlin utop async pa_ounit

opam switch 4.01.0
eval `opam config env`

# Configure an .ocamlinit
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
EOF

grep "opam config" ~/.bashrc > /dev/null || cat >> ~/.bashrc <<EOF

# opam config
eval \`opam config env\`
alias ocaml=utop

EOF

