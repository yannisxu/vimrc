set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
"required
Bundle 'gmarik/vundle'


"---------------
"Code Completions
"---------------
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
"Bundle 'garbas/vim-snipmate'
"Bundle 'ervandew/supertab'
"Bundle 'honza/snipmate-snippets'

"---------------
"sniptmate dependencies
"---------------
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"---------------
"Fast navigation
"---------------
"Bundle 'tsaleh/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'

"---------------
"Fast editing
"---------------
"Bundle 'tpope/vim-surround'
"Bundle 'scrooloose/nerdcommenter'


"---------------
"Color Scheme
"---------------
Bundle 'altercation/vim-colors-solarized'

Bundle 'vim-scripts/sudo.vim'

filetype plugin indent on
