set -ex

sudo apt-get install -y lxde chromium-browser

sudo sed "s/# autologin=dgod/autologin=vagrant/" -i /etc/lxdm/default.conf
sudo passwd -d vagrant

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

mkdir -p ~/.config
cp -rT 3110-tools/config ~/.config

sudo ln -s ~/.config/cs3110.bash_complete /etc/bash_completion.d/cs3110
