#!/usr/bin/env bash

dd if=/dev/zero of=/swapfile bs=1024 count=1048576
/sbin/mkswap /swapfile
/sbin/swapon /swapfile
echo '/swapfile swap swap defaults 0 0' >> /etc/fstab

host cs3110-vm

add-apt-repository ppa:avsm/ppa
apt-get update
apt-get install -y python-software-properties build-essential m4 \
                   subversion \
                   unzip \

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

rm /etc/update-motd.d/{50-landscape-sysinfo,51-cloudguest}

run-parts /etc/update-motd.d/
