#!/bin/bash

# powerline
pip install --user git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git submodule update --init
for i in bash git vim jshint tmux
do
    echo "stow $i"
    stow $i
done
source ~/.bashrc

if [ -d /home/wiz/.local/lib/python3.4 ]; then
    ln -s /home/wiz/.local/lib/python3.4 /home/wiz/.local/lib/python
elif [ -d /home/wiz/.local/lib/python2.7 ]; then
    ln -s /home/wiz/.local/lib/python2.7 /home/wiz/.local/lib/python
fi
