#!/bin/sh

for i in bash git vim jshint
do
    echo "stow $i"
    stow $i
done
