#!/bin/sh

stow bash
stow git
stow vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "[vim] Todo: :BundleInstall"
