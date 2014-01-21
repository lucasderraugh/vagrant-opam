sudo apt-get install -y --no-install-recommends \
  texlive-latex-base texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra pgf xpdf

[ -d 3110-tools ] || git clone https://github.com/cs3110/tools.git 3110-tools

# install tex stuff
sudo cp -rT 3110-tools/texmf /usr/local/share/texmf
sudo mktexlsr

