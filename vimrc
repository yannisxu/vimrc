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

"基本设置
source ~/.vim/bundles.vim

"encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

"enable filetype dectection and specific plugin/indent
filetype plugin indent on

"enable syntax hightlight and completion
syntax enable
syntax on

set nocompatible
set tabstop=4	"用4个空格代替一个 tab
set sts=4	"设置softtabstop 为4，输入tab后就跳了4格


" Develop editing options
au FileType vim setl expandtab
au FileType vim setl shiftwidth=2
au FileType vim setl tabstop=2

au FileType python,php,c,java,javascript,html,htm,smarty call SetOption()
function SetOption()
  set expandtab    " 使用空格代替tab
  set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
  set tabstop=4    " 用4个空格代替1个tab
  set sts=4        " 设置softtabstop 为 4，输入tab后就跳了4格.
  set cindent      " C语言方式缩进
  set smartindent  " 智能缩进
  set autoindent   " 自动缩进
  set smarttab     " 只在行首用tab，其他地方的tab都用空格代替
  set showmatch    " 在输入括号时光标会短暂地跳到与之相匹配的括号处
  set fdm=indent   " 代码折叠
  set lbr
  set tw=500
  set wrap         " 自动换行
endfunction

"----------------
"Code Compeltion
"----------------

"ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

"NeoComplCache
"Disable AutoComplPop
"let g:acp_enableAtStartup = 0
"Launches neocompcache automatically on vim startup
let g:neocomplcache_enable_at_startup = 1
"Use smartcase
let g:neocomplcache_enable_smart_case = 1
"Use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1
"Use underscore completion
let g:neocomplcache_enable_underbar_completion = 1
"Sets minium char length of syntax keyword
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"NeoSnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

"SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'



" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

let g:solarized_termcolors=256
"color theme
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

"快速执行脚本，可以添加更多脚本类型
function! RunScript()
    if &ft == "sh"
        :w|!bash %
    elseif &ft == "python"
	:w|!python %
    elseif &ft == "php"
	:w|!php %
    else 
	echo "Unsupport script type: " .&ft. ",please add below line to RunScript()"
	echo "\telseif &ft == ".&ft
	echo "\t:w|run_command % \"Please replace run_command as your own need"
    endif
endfunction
"普通模式下执行F2键快速执行脚本
nmap <F2> :call RunScript()<CR>
