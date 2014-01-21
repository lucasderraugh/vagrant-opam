#!/usr/bin/env bash
set -ex

sudo apt-get install -y emacs tuareg-mode auto-complete-el xemacs21

export OPAMYES=1
opam install ocp-index ocp-indent
[ -d ocaml-emacs-settings ] || git clone https://github.com/samoht/ocaml-emacs-settings.git
ln -sf ocaml-emacs-settings/.emacs
ln -sf ocaml-emacs-settings/.emacs.d/
