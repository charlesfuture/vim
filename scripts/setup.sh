#!/usr/bin/env bash
# -*- coding:utf-8 -*-

#if [ -f /usr/bin/lsb_release ]; then
#    OS=$(/usr/bin/lsb_release -d | awk '{print $2}' | sed 's/^[ t]*//g' | tr [A-Z] [a-z])
#else
#   OS=$(cat /etc/issue | sed -n '1p' | awk '{print $1}' | tr [A-Z] [a-z])
#fi

if `command -v apt-get >/dev/null 2>&1`; then
    cmd="apt-get install ncurses-dev python python-dev lua5.1 lua5.1-dev liblua5.1-dev ctags cmake build-essential gcc make"
elif `command -v yum >/dev/null 2>&1`; then
    cmd="yum install ncurses-devel python-devel lua lua-devel ctags cmake gcc gcc-c++"
else
    echo 'please install python python-dev lua lua-dev mannually!'
    exit 1
fi

rm -rf ~/.vim  ~/.vimrc
git clone https://github.com/zkdfbb/vim.git ~/.vim
cd ~/.vim

#首先安装最新版的vim，YouCompleteMe要求VIM版本>=7.4, neocomplete要求vim添加lua支持
cd ~/.vim/scripts
tar xf vim-7.4.tar.bz2
cd vim74

#安装依赖,添加python,lua支持除了安装python,lua5.1以外还需要安装对于的dev, 可选perl,ruby
if [ $(id -u) != "0" ]; then
    sudo su
fi

$cmd -y
./configure --with-features=huge --enable-cscope --enable-fontset --enable-multibyte --enable-pythoninterp=yes --enable-luainterp=yes --prefix=/usr && make -j10 && make install && rm -rf vim74

#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer
