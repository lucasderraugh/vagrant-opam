#!/usr/bin/env bash

dd if=/dev/zero of=/swapfile bs=1024 count=1048576
/sbin/mkswap /swapfile
/sbin/swapon /swapfile
echo '/swapfile swap swap defaults 0 0' >> /etc/fstab

add-apt-repository ppa:avsm/ppa
apt-get update
apt-get install -y python-software-properties build-essential m4 \
                   ocaml ocaml-native-compilers camlp4 camlp4-extra opam \
                   git libssl-dev subversion \
                   emacs tuareg-mode auto-complete-el xemacs21 \
                   vim vim-gtk \
                   nginx \
                   aspcud \
                   texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra \
                   xpdf

sed -i -e 's,/usr/share/nginx/html,/home/vagrant/.opam/doc/doc,g' /etc/nginx/sites-available/default

cat > /etc/motd.tail <<'EOF'
               ,,__
     ..  ..   / o._)   ___   ____                _ 
    /--'/--\  \-'||   / _ \ / ___|__ _ _ __ ___ | |
   /        \_/ / |  | | | | |   / _` | '_ ` _ \| |
 .'\  \__\  __.'.'   | |_| | |__| (_| | | | | | | |
   )\ |  )\ |         \___/ \____\__,_|_| |_| |_|_|
  // \\ // \\
 ||_  \\|_  \\_    -- two humps are better than one
 '--' '--'' '--'    

Run 'utop' to get started with an interactive console.
Documentation is available at http://localhost:8000/
EOF

run-parts /etc/update-motd.d/
