" An example for a vimrc file.
"
" Maintainer:	Yannis Xu <excellentbright@gmail.com>
" Last change:	2013 Jan 16
"
" To use it, copy it to
" for Unix and OS/2:  ~/.vimrc
" for Amiga:  s:.vimrc
" for MS-DOS and Win32:  $VIM\_vimrc
" for OpenVMS:  sys$login:.vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Use Vundle to manage plugins

source ~/.vim/bundles.vim

"encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"enable filetype dectection and specific plugin/indent
filetype plugin indent on

"enable syntax hightlight and completion
syntax enable
syntax on

"----------------
"Code Compeltion
"----------------

"ZenCoding
let g:user_zen_expandabbr_key='<C-j>'



let g:solarized_termcolors=256
"color theme
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized
