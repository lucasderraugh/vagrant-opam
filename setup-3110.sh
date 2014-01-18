cd ~

git clone https://github.com/cs3110/tools.git 3110-tools

# install cs3110 command
pushd 3110-tools/cs3110-cli/student/
make
popd

cat >> ~/.bashrc <<EOF

# 3110 tools
export PATH="$$PATH:$$HOME/3110-tools/cs3110-cli/student"
export TEXINPUTS="$$HOME/3110-tools/tex:$$TEXINPUTS:."

EOF
