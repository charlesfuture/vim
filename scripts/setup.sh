#!/usr/bin/env bash
## -*- coding:utf-8 -*-

rm -rf ~/.vim  ~/.vimrc
#git clone http://github.com/zkdfbb/vim.git ~/.vim
git clone --depth=1 git@github.com:zkdfbb/vim.git ~/.vim
git branch --set-upstream-to=origin/master master

ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
