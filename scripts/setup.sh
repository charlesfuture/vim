#!/usr/bin/env bash
# -*- coding:utf-8 -*-

#if [ -f /usr/bin/lsb_release ]; then
#    OS=$(/usr/bin/lsb_release -d | awk '{print $2}' | sed 's/^[ t]*//g' | tr [A-Z] [a-z])
#else
#   OS=$(cat /etc/issue | sed -n '1p' | awk '{print $1}' | tr [A-Z] [a-z])
#fi

set -x

rm -rf ~/.vim  ~/.vimrc
git clone digua@58.221.61.136:~/git/vim  ~/.vim
cd ~/.vim
git remote add github https://github.com/zkdfbb/vim.git

version=`vim --version | grep "7.4" | wc -l`
python=`vim --version | grep "+python" | wc -l`
lua=`vim --version | grep "+lua" | wc -l`
if [ $version -eq 1 ] && [ $python -eq 1 ] && [ $lua -eq 1 ]; then
    echo "vim is updated"
    exit 0
fi

if `command -v apt-get >/dev/null 2>&1`; then
    cmd="apt-get install ncurses-dev python python-dev lua5.1 lua5.1-dev liblua5.1-dev ctags cmake build-essential gcc make -y"
elif `command -v yum >/dev/null 2>&1`; then
    cmd="yum install ncurses-devel python-devel lua lua-devel ctags cmake gcc gcc-c++ -y"
else
    echo "please install python python-dev lua lua-dev mannually!"
    exit 1
fi

#安装依赖,添加python,lua支持除了安装python,lua5.1以外还需要安装对于的dev, 可选perl,ruby
if [ $(id -u) != "0" ]; then
    cmd="sudo "$cmd
fi
echo $cmd
eval $cmd


#安装最新版的vim，YouCompleteMe要求VIM版本>=7.4, neocomplete要求vim添加lua支持
cd ~/.vim/scripts
tar xf vim-7.4.tar.bz2
cd vim74

./configure --with-features=huge --enable-cscope --enable-fontset --enable-multibyte --enable-pythoninterp=yes --enable-luainterp=yes && make -j10 && sudo make install && cd ~/.vim && sudo rm -rf vim74 && echo "everything is done successful"

#cd ~/.vim/bundle/YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer
