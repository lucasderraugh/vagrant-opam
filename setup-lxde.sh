set -ex

# MRC: Installation of lxde fails the first time because of a configuration error related
#  to dictionaries, of all things.  Running fix_db fixes that error, then
#  installation can proceed.
sudo apt-get install -y lxde || true
sudo /usr/share/debconf/fix_db.pl
sudo apt-get install -y lxde chromium-browser

sudo sed "s/# autologin=dgod/autologin=vagrant/" -i /etc/lxdm/lxdm.conf
sudo passwd -d vagrant

sudo apt-get install -y chromium-browser

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

mkdir -p ~/.config
cp -rT 3110-tools/config ~/.config

sudo ln -s ~/.config/cs3110.bash_complete /etc/bash_completion.d/cs3110
