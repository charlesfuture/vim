" asyncfinder.vim - simple asynchronous fuzzy file finder for vim
" Maintainer: Dmitry "troydm" Geurkov <d.geurkov@gmail.com>
" Version: 0.2.7
" Description: asyncfinder.vim is a simple asychronous fuzzy file finder
" that searches for files in background without making you frustuated 
" Last Change: 10 October, 2014
" License: Vim License (see :help license)
" Website: https://github.com/troydm/asyncfinder.vim
"
" See asyncfinder.vim for help.  This can be accessed by doing:
" :help asyncfinder

if exists("b:current_syntax")
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

syntax match AsyncGrepTitle /^Type your pattern/ 
syntax match AsyncGrepTitle /^Searching in files\.*/
syntax match AsyncGrepPattern /^>.*$/
syntax match AsyncGrepFilename /^\zs\(Searching in files\)\@!\(Type your pattern\)\@![^:]\+\ze:/
syntax match AsyncGrepLine /\zs\d\+\ze:/

highlight default link AsyncGrepTitle    Comment
highlight default link AsyncGrepPattern  Title
highlight default link AsyncGrepFilename Character
highlight default link AsyncGrepLine     Identifier

let b:current_syntax = "asyncgrep"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1
