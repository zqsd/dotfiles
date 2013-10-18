#!/bin/sh

stow bash
mkdir -p ~/.bash
git clone https://github.com/nojhan/liquidprompt.git ~/.bash/liquidprompt

stow git

stow vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "[vim] Todo: :BundleInstall"
