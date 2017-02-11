#!/bin/sh

mv ~/.vimrc ~/vimrc_$(date --iso).bak
cat << EOF > ~/.vimrc
syntax on
set nu
set background=dark
set tabstop=4
EOF
