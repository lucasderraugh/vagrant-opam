#!/usr/bin/env bash
set -ex

sudo apt-get install -y emacs tuareg-mode auto-complete-el xemacs21

export OPAMYES=1
opam install ocp-index ocp-indent
git clone https://github.com/samoht/ocaml-emacs-settings.git
ln -s ocaml-emacs-settings/.emacs
ln -s ocaml-emacs-settings/.emacs.d/
