#!/bin/sh

git submodule update --init
for i in bash git vim jshint
do
    echo "stow $i"
    stow $i
done
