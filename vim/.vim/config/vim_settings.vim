" original from github/sdothum 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" ........................................................................ Setup

set nocompatible                      " disable vi-compatibility
filetype plugin on
syntax on
set selection=inclusive

" ....................................................................... System

set lazyredraw                        " don't redraw while executing macros
set modelines=1
set mouse=a                           " enable mouse actions
set title                             " change the terminal's title
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=100

" ......................................................................... Swap

" set directory=~/.vim/swap              " keep swap files in one location

"  ........................................................................ Undo

" keep persistent undo history across sessions, by storing in file
" silent !mkdir ~/.vim/backup 2>/dev/null
" set undodir=~/.vim/backup
set history=1000                      " store lots of :cmdline history
set undofile
set undolevels=1000                   " maximum number of changes that can be undone
set undoreload=10000                  " maximum number lines to save for undo

" .............................................................. Line formatting

set nojoinspaces                      " 1 space instead of 2 after punctuation when using J
set textwidth=80                      " normally 78-80, see autocmd for mail
let g:linewidth = &textwidth


" ......................................................................... Tabs

set autoindent
set copyindent                        " copy previous indentation on autoindenting
set expandtab                         " expand tabs into spaces
set shiftround                        " use multiple of shiftwidth when indenting with "<" or ">"
set shiftwidth=2                      " number of spaces for autoindenting
set nosmartindent                     " smartindent hash comments to beginning of line
set smarttab                          " insert tabs on start of a line with shiftwidth, not tabstop
set softtabstop=2
set tabstop=2                         " global tab width

cabbrev spaces set expandtab
cabbrev tabs   set noexpandtab

" ....................................................................... Search

set gdefault                          " global by default
set hlsearch                          " hilight searches by default
set ignorecase                        " ignore case when searching
set incsearch                         " find the next match as we type the search
set magic                             " regex magic
set showmatch                         " set show matching parenthesis
set smartcase                         " ignore case if search pattern is all lowercase

" ............................................................... Tab completion

" stuff to ignore when tab completing
set wildignore=.cache/**,cache/**
set wildignore+=*.class,*.pyc,*.swp
set wildignore+=Desktop/**
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=*.jar,*.tar.*,*.zip
set wildignore+=log/**
set wildignore+=*vim/backups*

set wildmenu                          " ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest,full        " command <Tab> completion order

