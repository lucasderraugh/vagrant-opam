cd ~

git clone https://github.com/cs3110/tools.git 3110-tools

# install cs3110 command
pushd 3110-tools/cs3110-cli/student/
make
popd

# install tex stuff
sudo cp -rT 3110-tools/texmf /usr/local/share/texmf
sudo mktexlsr
sudo updmap-sys Map=fourier.map
sudo updmap-sys Map=dejavu-type1.map
sudo mktexlsr

cat >> ~/.bashrc <<EOF

# 3110 tools
export PATH="$PATH:$HOME/3110-tools/cs3110-cli/student"

EOF
