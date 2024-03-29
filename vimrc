" runtime bundle/pathogen/autoload/pathogen.vim
" 禁用插件
" let g:pathogen_disabled = ['syntastic']
" if v:version < '703584'
"    call add(g:pathogen_disabled, 'pydiction')
" endif
" call pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'tpope/vim-pathogen'
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/python-mode'
Plugin 'rkulla/pydiction'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/xptemplate'
Plugin 'vim-scripts/nginx.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
"Plugin 'yonchu/accelerated-smooth-scroll'
"Plugin 'mattn/gist-vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'dkprice/vim-easygrep'
"Plugin 'mbbill/fencview'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'vim-scripts/genutils'
"Plugin 'vim-scripts/lookupfile'
"Plugin 'troydm/asyncfinder.vim'
Plugin 'lukaszb/vim-web-indent'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shortmess=atI                            " 启动的时候不显示那个援助乌干达儿童的提示
"winpos 5 5                                   " 设定窗口位置
"set lines=40 columns=155                     " 设定窗口大小
"set nu                                       " 显示行号
"set ruler                                    " 显示标尺
"set cmdheight=1                              " 命令行（在状态行下）的高度，设置为1
"set whichwrap+=<,>,h,l                       " 允许backspace和光标键跨越行边界(不建议)
"set scrolloff=3                              " 光标移动到buffer的顶部和底部时保持3行距离
"set cursorline                               " 突出显示当前行
"set ignorecase                               " 搜索忽略大小写
"set go=                                      " 不要图形按钮
"color asmanian2                              " 设置背景主题
"set background=dark                          " 背景使用黑色
"autocmd InsertLeave * se nocul               " 用浅色高亮当前行
"autocmd InsertEnter * se cul                 " 用浅色高亮当前行
":set makeprg=g++\ --std=c++11\ -Wall\ \ %                 " make运行,有makefile直接输入:make
:set makeprg=g++\ -o\ %<\ %\ --std=c++11\ -Wall\ -g        " make运行,有makefile直接输入:make

"set foldmethod=indent                        " 折叠方式
set foldcolumn=0                              " 折叠栏宽度,为0时表示没有折叠栏
set foldlevel=999                             " 折叠级别,设置就为很大后不会自动折叠了
set foldenable                                " 打开折叠

set showcmd                                   " 输入的命令显示出来，看的清楚些
set novisualbell                              " 不要闪烁
set nocompatible                              " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set viminfo='1000,<800                        " 设置粘贴行数
set nobackup                                  " 生成备份文件
set backupdir=/tmp                            " 备份文件位置
set swapfile                                  " 崩溃时生成.swp文件
set autoread                                  " 设置当文件被改动时自动载入
set completeopt=preview,menu                  " 代码补全
set clipboard+=unnamed                        " 共享剪贴板
set autowrite                                 " 自动保存
set ruler                                     " 在编辑过程中，在右下角显示光标位置的状态行
set showmatch                                 " 高亮显示匹配的括号
set magic                                     " 设置魔术
set guioptions-=T                             " 隐藏工具栏
set guioptions-=m                             " 隐藏菜单栏
set noeb                                      " 去掉输入错误的提示声音
set confirm                                   " 在处理未保存或只读文件的时候，弹出确认
set smartindent                               " 为C程序提供自动缩进
set autoindent                                " 继承前一行的缩进方式，特别适用于多行注释
set cindent                                   " 对C++和Java启用cindent缩进结构
set tabstop=4                                 " Tab键的宽度
set softtabstop=4                             " 统一缩进为4
set shiftwidth=4                              " 缩进4
set expandtab                                 " 用空格代替制表符
set smarttab                                  " 在行和段开始处使用制表符
set history=1000                              " 历史记录数
set hlsearch                                  " 搜索逐字符高亮
set incsearch                                 " 在程序中查询一单词，自动匹配单词的位置
set matchtime=5                               " 匹配括号高亮的时间（单位是十分之一秒）
set viminfo+=!                                " 保存全局变量
set iskeyword+=_,$,@,%,#,-                    " 带有如下符号的单词不要被换行分割
set linespace=0                               " 字符间插入的像素行数目
set wildmenu                                  " 增强模式中的命令行自动完成操作
set backspace=2                               " 使回格键（backspace）正常处理indent, eol, start等
set report=0                                  " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ ,stlnc:\          " 在被分割的窗口间显示空白，便于阅读
set showmatch                                 " 高亮显示匹配的括号
set matchtime=1                               " 匹配括号高亮的时间（单位是十分之一秒）
set laststatus=2                              " 启动显示状态行(1),总是显示状态行(2)
set cmdheight=1                               " 命令行（在状态行下）的高度，默认为1，这里是2
set noerrorbells                              " 错误信息响铃
set novisualbell                              " 使用可视响铃代替鸣叫
set t_vb=                                     " 既不想要响铃也不想要闪烁,


" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"记住上次位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 可以在buffer的任何地方使用鼠标(使用taglist鼠标定位时需打开)
""set mouse=a
""set selection=exclusive
""set selectmode=mouse,key


"设置编码
set langmenu=zh_CN.UTF-8
set helplang=cn
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8


" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" 设置配色方案
colorscheme molokai
if (has("gui_running"))
   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
endif

syntax on                                              " 语法高亮
filetype on                                            " 侦测文件类型
filetype plugin on                                     " 载入文件类型插件
filetype indent on                                     " 为特定文件类型载入相关缩进文件
filetype plugin indent on                              " 打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu                           " 关掉智能补全时的预览窗口
autocmd FileType php set omnifunc=phpcomplete                               " PHP语法提示
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>         " quickfix模式
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascrīptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java,py,php文件，自动插入文件头

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"如果是新建的php文件，则自动定位到最后第二行
"autocmd BufNewFile *.php normal k
"读入python文件，设置缩进格式
autocmd BufNewFile,BufRead *.py exec ":call SetPython()"
func SetPython()
    set list
    set listchars=tab:>.,trail:+,extends:#,nbsp:. " 用特殊字符表示制表符，使之和空格区分
    set guifont=Courier_New:h10:cANSI             " 设置字体
    set cinwords=if,elif,else,for,while,try,expect,finally,def,class
endfunc
"读入html，javascript, css，less文件，设置缩进格式
""autocmd BufNewFile,BufRead *.html,*.js,*.css,*.less exec ":call SetIntent()"
""func SetIntent()
""    set tabstop=2
""    set softtabstop=2
""    set shiftwidth=2
""endfunc
"读入C文件，设置折叠方式为syntax
autocmd BufNewFile,BufRead *.[ch],*.cpp set foldmethod=syntax
"读入其它文件，设置折叠方式为indent
autocmd BufNewFile,BufRead *.py,*.sh,*.java,*.php set foldmethod=indent
"设置less文件高亮
autocmd BufNewFile,BufRead *.less set filetype=less
"twig文件高亮
autocmd BufNewFile,BufRead *.twig set filetype=twig
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
"markdown文件高亮
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
"nginx配置文件
"注释掉nginx/plugin中的setlocal iskeyword+=:,否则python文件数字后跟冒号会出现红色着重号
autocmd BufRead,BufNewFile /etc/nginx/conf.d/*,*.nginx set ft=nginx
"pig高亮
autocmd BufNewFile,BufRead *.pig set filetype=pig syntax=pig 



"进行版权声明的设置
"添加或更新头
function AddTitle()

    if &filetype == 'python' || &filetype == 'sh'
        call append(2, "\##############################################")
        call append(3, "\#")
        call append(4, "\#  Author: zhangkai")
        call append(5, "\#  Mail: zhangkai@conew.com")
        call append(6, "\#  Filename: ".expand("%"))
        call append(7, "\#  Last modified: ".strftime("%Y-%m-%d %H:%M"))
        call append(8, "\#")
        call append(9, "\##############################################")
    else
        call append(0, "/**********************************************")
        call append(1, "*")
        call append(2, "*  Author: zhangkai")
        call append(3, "*  Mail: zhangkai@conew.com ")
        call append(4, "*  Filename: ".expand("%"))
        call append(5, "*  Last modified: ".strftime("%Y-%m-%d %H:%M"))
        call append(6, "*")
        call append(7, "***********************************************/")
        call append(8, "")
    endif
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/Last modified:/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/Filename:/s@:.*$@\=": ".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^.*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

autocmd BufNewfile *.h exec ":call SetHead()"
function! SetHead()
python << EOF
import vim
buf = vim.current.buffer
vim.command('let title=expand("%:r")')
name = vim.eval("title")
name = "_" + name.upper() + "_H"
vim.command('call append(0, "#ifndef %s")'%name)
vim.command('call append(1, "#define %s")'%name)
buf.append("\n")
buf.append("#endif")

EOF
endfunction



function! Q2B()
python << EOF
import vim

ustring = vim.current.line.decode('utf-8')
rstring = ""
for uchar in ustring:
    inside_code=ord(uchar)
    if inside_code == 12288 or (inside_code >= 65281 and inside_code <= 65374):
        if inside_code == 12288:                              #全角空格直接转换
            inside_code = 32
        elif (inside_code >= 65281 and inside_code <= 65374): #全角字符（除空格）根据关系转化
            inside_code -= 65248

    elif inside_code >= 32 and inside_code <= 126:
        if inside_code == 32:                                 #半角空格直接转化
            inside_code = 12288
        elif inside_code >= 33 and inside_code <= 126:        #半角字符（除空格）根据关系转化
            inside_code += 65248

    rstring += unichr(inside_code)
vim.current.line = rstring.encode('utf-8')

'''
buf = vim.current.buffer
for index, ustring in enumerate(buf):
    ustring = ustring.decode('utf-8')
    rstring = ""
    for uchar in ustring:
        inside_code=ord(uchar)
        if inside_code == 12288:                              #全角空格直接转换
            inside_code = 32
        elif (inside_code >= 65281 and inside_code <= 65374): #全角字符（除空格）根据关系转化
            inside_code -= 65248
        rstring += unichr(inside_code)
    buf[index] = rstring.encode('utf-8')
'''
EOF
endfunction


function! B2Q()
python << EOF
import vim

ustring = vim.current.line.decode('utf-8')
rstring = ""
for uchar in ustring:
    inside_code=ord(uchar)
    if inside_code == 32:                                 #半角空格直接转化
        inside_code = 12288
    elif inside_code >= 32 and inside_code <= 126:        #半角字符（除空格）根据关系转化
        inside_code += 65248
    rstring += unichr(inside_code)
vim.current.line = rstring.encode('utf-8')

'''
buf = vim.current.buffer
for index, ustring in enumerate(buf):
    ustring = ustring.decode('utf-8')
    rstring = ""
    for uchar in ustring:
        inside_code=ord(uchar)
        if inside_code == 32:                                 #半角空格直接转化
            inside_code = 12288
        elif inside_code >= 32 and inside_code <= 126:        #半角字符（除空格）根据关系转化
            inside_code += 65248

        rstring += unichr(inside_code)
    buf[index] = rstring.encode('utf-8')
'''
EOF
endfunction


"定义函数SetTitle，自动插入文件头
autocmd BufNewFile *.[c],*.cpp,*.sh,*.java,*.py,*.php,*.html,*.css,*.less exec ":call SetTitle()"
func SetTitle()

    if &filetype == 'python'
        call append(0, "\#!/usr/bin/env python")
        call append(1, "\# -*- coding:utf-8 -*-")
        call append(2, "")
        call append(3, "import sys")
        call append(4, "reload(sys)")
        call append(5, "sys.setdefaultencoding('utf-8')")
        call append(6, "")

    elseif &filetype == 'sh'
        call append(0, "\#!/usr/bin/env bash")
        call append(1, "\# -*- coding:utf-8 -*-")
        call append(3, "")

    elseif &filetype == 'cpp'
        call append(0,"#include <iostream>")
        call append(1,"#include <vector>")
        call append(2,"#include <algorithm>")
        call append(3, "using namespace std;")
        call append(4, "")
        call append(5, "int main(int argc,char **argv){")
        call append(line("$"), "    return 0;")
        call append(line("$"), "}")

    elseif &filetype == 'c'
        call append(0,"#include <stdio.h>")
        call append(1,"#include <stdlib.h>")
        call append(2, "")
        call append(3, "int main(int argc,char **argv){")
        call append(line("$"), "    return 0;")
        call append(line("$"), "}")

    elseif &filetype == 'java'
        call append(0, "public class ". expand("%:r") . " {")
        call append(1, "    public static void main(String[] args){")
        call append(2, "        System.out.println();")
        call append(line("$"), "    }")
        call append(line("$"), "}")

    elseif &filetype == 'php'
        call append(0, "<?php")
        call append(line("$"), "?>")

    elseif &filetype == 'html'
        call append(0,'<!DOCTYPE html>')
        call append(1,'<html lang="zh_CN">')
        call append(2,'<head>')
        call append(3,'<meta charset="utf-8">')
        call append(4,'<meta http-equiv="mobile-agent" content="format=html5;url=http://">')
        call append(5,'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">')
        call append(6,'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">')
        call append(7,'<meta name="keywords" content="">')
        call append(8,'<meta name="description" content="">')
        call append(9,'<link rel="stylesheet" href="/style.css">')
        call append(10,'<title></title>')
        call append(11,'</head>')
        call append(12,'<body>')
        call append(line('$'),'</body>')
        call append(line('$'),'</html>')

    endif

endfunc


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
"nore  表示非递归，递归模式下，如果a映射成b，b映射成c，则a映射成c
"n     表示在普通模式下生效
"v     表示在可视模式下生效
"i     表示在插入模式下生效
"c     表示在命令行模式下生效
"(n|v|i|c)(map|unmap|mapclear) 分别表示各种模式下的映射，取消某个按键映射，取消全部映射
" <C-a> 表示Ctrl+a, <A-a>表示Alt+a
" <leader>默认是\,使用help <ledaer>查看,修改成了,
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
let g:mapleader = ","

nmap <leader>f :find<cr>

" 新建标签
map <C-F2> :tabnew<CR>

" 设置空格键开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>

" 映射全选+复制 Ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY

" 绑定复制到系统剪贴板快捷键
vmap <leader>c "+y
nmap <leader>c "+y
" 绑定粘贴系统剪贴板内容快捷键
"imap <leader>v <ESC>"+p "不设置insert模式下的快捷键，因为会造成无法输入,v
vmap <leader>v <ESC>"+p
nmap <leader>v "+p

"快速退出
nmap wq :wq<CR>
nmap qq :q!<CR>

nmap <C-l> :PymodeLint<CR>
nmap <C-m> :PymodeLintAuto<CR>
nmap <C-k> :setlocal textwidth=500<CR>

vmap <C-g> s<C-r>=Yw_strzhpunc2enpunc(@", '')<CR><ESC>
nmap <C-g> yls<C-r>=Yw_strzhpunc2enpunc(@", '')<CR><ESC>
" ,+c 全角半角切换
map <leader>c :call Q2B()<CR>

" Ctrl+e 保存到印象笔记
map <leader>e :call Note()<CR>
map <leader>s :call SaveNote()<CR>
map <leader>p :call PubNote()<CR>

" F1:帮助(默认)
" F2:切换窗口
" F3:去行尾空格(普通模式)
" F4:去空行(普通模式)
" F5:编译运行
" F6:调试运行
" F7:粘贴模式
" F8:打开/关闭NERDRree
" F9:打开/关闭Tagbar
" F10:Python代码格式化
" F11:最大化(默认)
" F12:自动插入文件头部声明

noremap <F2> <C-w>w
nnoremap <F3> :%s/\s\+$//g<CR>
nnoremap <F4> :%s/^\n\+$//g<CR>
map <F5> :SCCompileRun<CR
vmap <F6> :call Q2B()<CR>
map <F7> :set paste<CR>i
map <silent> <F8> :NERDTreeToggle<CR>
map <silent> <F9> :TagbarToggle<cr>
"map <silent> <F9> :TlistToggle<cr>
"map <silent> <F10> :bn<cr>
map <silent> <F10> :PymodeLintAuto<cr>
map <F12> :call TitleDet()<cr>'s

nnoremap <C-F2> :vert diffsplit

func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -g -Wall -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ --std=c++11 -g -Wall % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'python'
        exec "!python %"
    elseif &filetype == 'sh'
        "":!./%
        exec "!sh %"
    elseif &filetype == 'php'
        exec "!php %"
    endif
endfunc

func! Debug()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -g -o %<"
        exec "!gdb %<"
    elseif &filetype == 'cpp'
        exec "!g++ % -g -o %<"
        exec "!gdb %<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!jdb %<"
    elseif &filetype == 'python'
        exec "!python -m pdb %"
    elseif &filetype == 'sh'
        exec "!sh -x %"
    elseif &filetype == 'php'
        exec "!php %"
    endif
endfunc



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist 使用+-切换折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"                                  " 按照名称排序
let Tlist_Compart_Format = 1                                  " 压缩方式
let Tlist_Exist_OnlyWindow = 1                                " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0                            " 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0                              " 不要显示折叠树
let Tlist_Show_One_File = 1                                   " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Auto_Open = 0                                       " 默认打开Taglist
let Tlist_Exit_OnlyWindow = 1                                 " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1                                " 在右侧窗口中显示taglist窗口
let Tlist_Ctags_Cmd = '/usr/bin/ctags'                        " ctags可执行文件路径
let Tlist_Use_SingleClick = 1                                 " 默认双击跳转，改成单击跳转
"let Tlist_GainFocus_On_ToggleOpen = 1                        " 打开taglist窗口时，输入焦点在taglist窗口

"autocmd FileType java set tags+=~/tags/java                  " 对java设置tags文件的路径
"autocmd FileType h,cpp,cc,c set tags+=~/tags/cpp             " 对c设置tags文件的路径
set tags=tags;                                                " 先在当前目录寻找tags，递归父级目录寻找
set autochdir                                                 " 改变vim的当前目录为打开的文件所在目录
set cscopetag

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
let g:tagbar_show_visibility = 1
let g:tagbar_hide_nonpublic = 0
let g:tagbar_autoshowtag = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 打开目录时不显示隐藏目录和文件
let g:netrw_hide= 1
let g:netrw_list_hide= '^\..*'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python-mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_options_max_line_length = 999
let g:pymode = 1
let g:pymode_options = 0
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_on_write = 0
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0 "一定要加这个，要不然遇到中文目录会乱码 的
let g:pymode_rope_rename_bind = '<F2>' "改名的

"let g:pymode_run = 1
"let g:pymode_run_bind = '<F5>'
"Folding
let g:pymode_folding = 0 "这个是一打开的时候，就折叠的


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pydiction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2     " Always show the statusline
set t_Co=256         " Explicitly tell Vim that the terminal support 256 colors
let g:Powerline_symbols = 'unicode'
let g:Powerline_cache_enabled = 0
let g:Powerline_stl_path_style = 'full'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'
" 设置转到定义处的快捷键为ALT + G，这个功能非常赞
""nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\> :YcmCompleter GoToDefinitionElseDeclaration<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-indent-guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
nmap <silent> <C-i> <Plug>IndentGuidesToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  let g:acp_enableAtStartup = 0
""  let g:neocomplete#enable_at_startup = 1
""  let g:neocomplete#enable_smart_case = 1
""  let g:neocomplete#sources#syntax#min_keyword_length = 3
""  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
""  
""  " Define dictionary.
""  let g:neocomplete#sources#dictionary#dictionaries = {
""      \ 'default' : '',
""      \ 'vimshell' : $HOME.'/.vimshell_hist',
""      \ 'scheme' : $HOME.'/.gosh_completions'
""          \ }
""  
""  " Define keyword.
""  if !exists('g:neocomplete#keyword_patterns')
""      let g:neocomplete#keyword_patterns = {}
""  endif
""  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
""  
""  " Plugin key-mappings.
""  inoremap <expr><C-g>     neocomplete#undo_completion()
""  inoremap <expr><C-l>     neocomplete#complete_common_string()
""  
""  " Recommended key-mappings.
""  " <CR>: close popup and save indent.
""  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
""  function! s:my_cr_function()
""    return neocomplete#close_popup() . "\<CR>"
""    " For no inserting <CR> key.
""    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
""  endfunction
""  " <TAB>: completion.
""  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
""  " <C-h>, <BS>: close popup and delete backword char.
""  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
""  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
""  inoremap <expr><C-y>  neocomplete#close_popup()
""  inoremap <expr><C-e>  neocomplete#cancel_popup()
""  " Close popup by <Space>.
""  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
""  
""  " For cursor moving in insert mode(Not recommended)
""  "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
""  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
""  "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
""  "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
""  " Or set this.
""  "let g:neocomplete#enable_cursor_hold_i = 1
""  " Or set this.
""  "let g:neocomplete#enable_insert_char_pre = 1
""  
""  " AutoComplPop like behavior.
""  "let g:neocomplete#enable_auto_select = 1
""  
""  " Shell like behavior(not recommended).
""  "set completeopt+=longest
""  "let g:neocomplete#enable_auto_select = 1
""  "let g:neocomplete#disable_auto_complete = 1
""  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
""  
""  " Enable omni completion.
""  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
""  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
""  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
""  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
""  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
""  
""  " Enable heavy omni completion.
""  if !exists('g:neocomplete#sources#omni#input_patterns')
""    let g:neocomplete#sources#omni#input_patterns = {}
""  endif
""  "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""  "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""  "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
""  
""  " For perlomni.vim setting.
""  " https://github.com/c9s/perlomni.vim
""  let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
""  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1   " 创建后直接打开浏览器查看

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" superTab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fencview
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fencview_autodetect = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lookupfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
"if filereadable("./filenametags")                "设置tag文件的名字
"let g:LookupFile_TagExpr = '"./filenametags"'
"endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>

" lookup file with ignore case
function! LookupFile_IgnoreCaseFunc(pattern)
    let _tags = &tags
    try
        let &tags = eval(g:LookupFile_TagExpr)
        let newpattern = '\c' . a:pattern
        let tags = taglist(newpattern)
    catch
        echohl ErrorMsg | echo "Exception: " . v:exception | echohl NONE
        return ""
    finally
        let &tags = _tags
    endtry

    " Show the matches for what is typed so far.
    let files = map(tags, 'v:val["filename"]')
    return files
endfunction
let g:LookupFile_LookupFunc = 'LookupFile_IgnoreCaseFunc'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 全角半角转换
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ywpunc = {
            \'''':['‘', '’'],
            \'"':['“', '”'],
            \'...' : '……',
            \'!': '！',
            \',': '，',
            \'.': '。',
            \'`' : '｀',
            \':' : '：',
            \'(' : '（',
            \')' : '）',
            \'[' : '［',
            \']' : '］',
            \'<' : '＜',
            \'>' : '＞',
            \'-' : '－',
            \'_' : '＿',
            \'=' : '＝',
            \'*' : '＊',
            \'&' : '＆',
            \'$' : '￥',
            \'@' : '＠',
            \'#' : '＃',
            \'^' : '＾',
            \'\\' : '＼',
            \'/' : '／',
            \'+' : '＋',
            \';' : '；',
            \'?' : '？',
            \'%' : '％',
            \' ' : '　',
            \'{' : '｛',
            \'}' : '｝',
            \'1' : '１',
            \'2' : '２',
            \'3' : '３',
            \'4' : '４',
            \'5' : '５',
            \'6' : '６',
            \'7' : '７',
            \'8' : '８',
            \'9' : '９',
            \'0' : '０',
            \'a' : 'ａ',
            \'b' : 'ｂ',
            \'c' : 'ｃ',
            \'d' : 'ｄ',
            \'e' : 'ｅ',
            \'f' : 'ｆ',
            \'g' : 'ｇ',
            \'h' : 'ｈ',
            \'i' : 'ｉ',
            \'j' : 'ｊ',
            \'k' : 'ｋ',
            \'l' : 'ｌ',
            \'m' : 'ｍ',
            \'n' : 'ｎ',
            \'o' : 'ｏ',
            \'p' : 'ｐ',
            \'q' : 'ｑ',
            \'r' : 'ｒ',
            \'s' : 'ｓ',
            \'t' : 'ｔ',
            \'u' : 'ｕ',
            \'v' : 'ｖ',
            \'w' : 'ｗ',
            \'x' : 'ｘ',
            \'y' : 'ｙ',
            \'z' : 'ｚ',
            \'A' : 'Ａ',
            \'B' : 'Ｂ',
            \'C' : 'Ｃ',
            \'D' : 'Ｄ',
            \'E' : 'Ｅ',
            \'F' : 'Ｆ',
            \'G' : 'Ｇ',
            \'H' : 'Ｈ',
            \'I' : 'Ｉ',
            \'J' : 'Ｊ',
            \'K' : 'Ｋ',
            \'L' : 'Ｌ',
            \'M' : 'Ｍ',
            \'N' : 'Ｎ',
            \'O' : 'Ｏ',
            \'P' : 'Ｐ',
            \'Q' : 'Ｑ',
            \'R' : 'Ｒ',
            \'S' : 'Ｓ',
            \'T' : 'Ｔ',
            \'U' : 'Ｕ',
            \'V' : 'Ｖ',
            \'W' : 'Ｗ',
            \'X' : 'Ｘ',
            \'Y' : 'Ｙ',
            \'Z' : 'Ｚ',
             \}
let g:ywpair = 1
""vmap <C-m> s<C-r>=Yw_strzhpunc2enpunc(@", '')<CR><ESC>
""nmap <C-m> yls<C-r>=Yw_strzhpunc2enpunc(@", '')<CR><ESC>


if !exists("g:ywpair")
     let s:ywpair = 0
else
     let s:ywpair = g:ywpair
endif
function Yw_strzhpunc2enpunc(str, m) " {{{ 标点中英互换
     if !exists("g:ywpunc") || a:str == ''
         return ''
     endif
     let strlst = split(a:str, '\zs')
     let transtr = ''
     for i in range(len(strlst))
         let tran = <SID>Yw_zhpunc2enpunc(strlst[i], a:m)
         if type(tran) == type([])
             if s:ywpair == 1
                 let pairchar0 = tran[0]
                 let pairchar1 = tran[1]
                 let pairidx0 = match(transtr, '[^' . pairchar0 . ']*$')
                 let pairidx1 = match(transtr, '[^' . pairchar1 . ']*$')
                 let tranchar = (pairidx0 <= pairidx1 ? pairchar0 : pairchar1)
             else
                 let tranchar = tran[0]
             endif
         else
             let tranchar = tran
         endif
         unlet tran
         let transtr .= tranchar
     endfor
     return transtr
endfunction " }}}

function s:Yw_zhpunc2enpunc(c, m) " {{{ 标点中英互换
     let escapetranchar = '\V' . escape(a:c, '\')
     let keyidx = match(keys(g:ywpunc), escapetranchar)
     let validx = match(values(g:ywpunc), escapetranchar)
     if (keyidx != -1) && (a:m == "" || a:m == 'l2r')
         let tranchar = values(g:ywpunc)[keyidx]
     elseif (validx != -1) && (a:m == "" || a:m == 'r2l')
         let tranchar = keys(g:ywpunc)[validx]
     else
         let tranchar = a:c
     endif
     return tranchar
endfunction " }}}



