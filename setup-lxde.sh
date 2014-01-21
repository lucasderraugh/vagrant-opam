set -ex

sudo apt-get install -y lxde
sudo sed "s/# autologin=dgod/autologin=vagrant/" -i /etc/lxdm/lxdm.conf
sudo passwd -d vagrant

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

mkdir -p ~/.config
cp -rT 3110-tools/config ~/.config

