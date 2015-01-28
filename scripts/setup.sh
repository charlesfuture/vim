#!/usr/bin/env bash
## -*- coding:utf-8 -*-

rm -rf ~/.vim  ~/.vimrc
git clone git@git.ustclug.org:zhangkai/vim.git ~/.vim
git branch --set-upstream-to=origin/master master

cd ~/.vim/scripts
tar xf vim-7.4.tar.bz2
cd vim74
apt-get install ncurses-dev python-dev lua5.1 liblua5.1-dev ctags cmake build-essential -y
./configure --with-features=huge --enable-cscope --enable-fontset --enable-multibyte --enable-perlinterp --enable-rubyinterp --enable-pythoninterp=yes --enable-luainterp=yes --prefix=/usr
make -j10 &&  make install

#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer
