# vim 配置文件

**在其他机器上部署**

    #首先安装最新版的vim，YouCompleteMe要求VIM版本>=7.4, neocomplete要求vim添加lua支持
    wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
    tar xf vim-7.4.tar.bz2
    cd vim74
    #安装依赖,添加python,lua支持除了安装python,lua5.1以外还需要安装对于的dev, 可选perl,ruby
    apt-get install ncurses-dev python-dev lua5.1 liblua5.1-dev -y
    ./configure --with-features=huge --enable-cscope --enable-fontset --enable-multibyte --enable-perlinterp --enable-rubyinterp --enable-pythoninterp=yes --enable-luainterp=yes --prefix=/usr
    make -j10 &&  make install

    #部署
    rm -rf ~/.vim ~/.vimrc
    git clone git@git.ustclug.org:zhangkai/vim.git

    #插件说明
    YouComplete和neocomplete都是补全插件,两者使用其一即可,默认启用neocomplete

    #或者直接使用下面的命令

    wget -qO-  https://raw.github.com/zkdfbb/vim/master/scripts/setup.sh | sh

**submodule初始化**

    cd ~/.vim
    git submodule init
    git submodule update


**升级所有插件**

    cd ~/.vim
    git submodule foreach git pull origin master

**删除一个插件，要求版本git >= 1.8.3**

    git submodule deinit bundle/markdown
    git rm bundle/markdown
    rm -rf .git/modules/bundle/markdown

**插件简介**

YouCompleteMe   补全插件

    apt-get install build-essential cmake
    cd ~/.vim/bundle/YouCompleteMe
    git submodule update --init --recursive
    ./install.sh --clang-completer

neocomplete     只能补全插件
    
    apt-get install ncurses-dev python-dev lua5.1 liblua5.1-dev -y
    需要vim添加lua支持

xptemplate    重复代码插件

    在insert模式下输入片段代码的名字(如switch)，然后按<C-\>(即Ctrl+\)
    然后按tab、shift tab前后更改高亮显示的内容

Tagbar    taglist插件

    apt-get install ctags

Pymode

    要求python使用--enable-shared参数编译

emmet

    输入缩略词组div#page>ul>li*3然后按Ctrl+y+,即可展开成html代码


SingleCompile

    #编译运行一个简单的源文件，绑定按键F5
    nmap <F5> :SCCompileRun<cr>


**VIM技巧**

[Vim编程——配置与技巧](http://linux-wiki.cn/wiki/%E7%94%A8Vim%E7%BC%96%E7%A8%8B%E2%80%94%E2%80%94%E9%85%8D%E7%BD%AE%E4%B8%8E%E6%8A%80%E5%B7%A7)

**插件列表**

    [submodule "bundle/pathogen"]
    	path = bundle/pathogen
    	url = git://github.com/tpope/vim-pathogen.git
    [submodule "bundle/python-mode"]
    	path = bundle/python-mode
    	url = git://github.com/klen/python-mode.git
    [submodule "bundle/tagbar"]
    	path = bundle/tagbar
    	url = git://github.com/majutsushi/tagbar
    [submodule "bundle/emmet"]
    	path = bundle/emmet
    	url = git://github.com/mattn/emmet-vim.git
    [submodule "bundle/nerdtree"]
    	path = bundle/nerdtree
    	url = git://github.com/scrooloose/nerdtree.git
    [submodule "bundle/less"]
    	path = bundle/less
    	url = git://github.com/groenewege/vim-less
    [submodule "bundle/markdown"]
    	path = bundle/markdown
    	url = git://github.com/plasticboy/vim-markdown.git
    [submodule "bundle/syntastic"]
    	path = bundle/syntastic
    	url = git://github.com/scrooloose/syntastic.git
    [submodule "bundle/YouCompleteMe"]
    	path = bundle/YouCompleteMe
    	url = git://github.com/Valloric/YouCompleteMe
    [submodule "bundle/pydiction"]
    	path = bundle/pydiction
    	url = git://github.com/rkulla/pydiction
    [submodule "bundle/powerline"]
    	path = bundle/powerline
    	url = git://github.com/Lokaltog/vim-powerline
    [submodule "bundle/xptemplate"]
    	path = bundle/xptemplate
    	url = git://github.com/vim-scripts/xptemplate
    [submodule "bundle/nginx"]
    	path = bundle/nginx
        url = git://github.com/vim-scripts/nginx.vim
