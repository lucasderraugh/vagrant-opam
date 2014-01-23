set -ex

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

# install cs3110 command
make -C 3110-tools/cs3110-cli/student/
sudo make -C 3110-tools/cs3110-cli/student/ install

