#!/bin/sh

stow bash
mkdir -p ~/.bash
if [ ! -d "~/.bash/liquidprompt" ]; then git clone https://github.com/nojhan/liquidprompt.git ~/.bash/liquidprompt ; fi

stow git

stow vim
if [ ! -d "~/.vim/bundle/vundle" ]; then git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle ; fi
echo "[vim] Todo: :BundleInstall"
