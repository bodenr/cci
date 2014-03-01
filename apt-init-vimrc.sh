#!/bin/bash

sudo apt-get install -y vim

VIMRC="
set expandtab
set tabstop=4
set number
set background=dark

syntax on

\" tab stops and change tabs to spaces
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

\" \" remove trailing whitespace automagically on write
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> :%s/\\s\\+$//e

"

echo "$VIMRC" > ~/.vimrc

