#!/usr/bin/env bash
set -e
PACKAGES="async pa_ounit"

export OPAMYES=1
export OPAMJOBS=2
opam install opam-doc merlin utop
opam install ${PACKAGES}

# Generate OPAM doc in ~/.opam/doc/doc
eval `opam config env`
opam doc -n ${PACKAGES}

# Add extra clauses to .ocamlinit for new packages
cat >> ~/.ocamlinit <<EOF
#require "core.top";;
#require "core.syntax";;
EOF

# Start web server for docs
sudo apt-get install -y nginx

sed -i -e 's,/usr/share/nginx/html,/home/vagrant/.opam/doc/doc,g' /etc/nginx/sites-available/default
sudo service nginx start

