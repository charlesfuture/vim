#!/usr/bin/env bash
#*-* utf-8 *-*

rm -rf ~/.vim  ~/.vimrc
mkdir -p ~/.vim/bundle
cd ~/.vim
git init
git remote add origin git@github.com:zkdfbb/vim.git
git branch --set-upstream-to=origin/master master

git submodule add git://github.com/tpope/vim-pathogen.git bundle/pathogen
echo -e "runtime bundle/pathogen/autoload/pathogen.vim\ncall pathogen#infect()\n" >> vimrc
ln -s ~/.vim/vimrc ~/.vimrc

git submodule add git://github.com/plasticboy/vim-markdown.git  bundle/markdown
git submodule add git://github.com/scrooloose/syntastic.git     bundle/syntastic
git submodule add git://github.com/klen/python-mode.git         bundle/python-mode
git submodule add git://github.com/majutsushi/tagbar            bundle/tagbar
git submodule add git://github.com/mattn/emmet-vim.git          bundle/emmet
git submodule add git://github.com/scrooloose/nerdtree.git      bundle/nerdtree
git submodule add git://github.com/groenewege/vim-less          bundle/less
git submodule add git://github.com/Valloric/YouCompleteMe       bundle/YouCompleteMe
git submodule add git://github.com/Lokaltog/vim-powerline       bundle/powerline
git submodule add git://github.com/rkulla/pydiction             bundle/pydiction

git add .
git commit -a -m 'init'
git push master origin
