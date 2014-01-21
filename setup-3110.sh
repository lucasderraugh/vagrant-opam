
[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

# install cs3110 command
make -C 3110-tools/cs3110-cli/student/

grep "3110 tools" ~/.bashrc > /dev/null || cat >> ~/.bashrc <<EOF

# 3110 tools
export PATH="\$PATH:\$HOME/3110-tools/cs3110-cli/student"

EOF
