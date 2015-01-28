#!/usr/bin/env bash
# -*- coding:utf-8 -*-


if [ -f /usr/bin/lsb_release ]; then
    OS=$(/usr/bin/lsb_release -d | awk '{print $2}' | sed 's/^[ t]*//g' | tr [A-Z] [a-z])
else
    OS=$(cat /etc/issue | sed -n '1p' | awk '{print $1}' | tr [A-Z] [a-z])
fi

if `echo $OS | grep -q -E 'ubuntu|debian'`; then
    cmd="apt-get install ncurses-dev python-dev lua5.1 liblua5.1-dev ctags cmake build-essential"
elif `echo $OS | grep -q -E 'centos|fedora'`; then
    cmd="yum install ncurses-devel python-devel lua lua-devel ctags cmake gcc gcc-c++"
else
    echo 'please install python python-dev lua lua-dev mannually!'
    exit 1
fi

rm -rf ~/.vim  ~/.vimrc
git clone https://git.ustclug.org/zhangkai/vim.git ~/.vim
cd ~/.vim
git branch --set-upstream-to=origin/master master

cd ~/.vim/scripts
tar xf vim-7.4.tar.bz2
cd vim74

if [ $(id -u) != "0" ]; then
    sudo $cmd -y
else
    $cmd -y
fi

./configure --with-features=huge --enable-cscope --enable-fontset --enable-multibyte --enable-pythoninterp=yes --enable-luainterp=yes --prefix=/usr
make -j10

if [ $(id -u) != "0" ];then
    sudo make install
else
    make install
fi


#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer
