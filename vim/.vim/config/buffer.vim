" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup buffer
  autocmd!
augroup END


" File buffers _________________________________________________________________

" ........................................................................ Setup

set autoread                           " reload files changed outside vim
" set autowrite                        " auto write a modified buffer on leaving
set hidden                             " allow hidden background buffers


" File handling ________________________________________________________________

" ........................................................................ Setup

autocmd buffer Filetype markdown  setlocal spell wrap enc=utf-8 formatoptions=tqwan1 textwidth=72
" autocmd buffer Filetype note      setlocal spell wrap enc=utf-8 formatoptions=tqwan1 textwidth=72
autocmd buffer Filetype python    setlocal nospell expandtab tabstop=4 shiftwidth=4 softtabstop=4
" autocmd buffer Filetype shell     setLocal nospell expandtab tabstop=2 shiftwidth=2 softtabstop=2
" autocmd buffer Filetype sh        setlocal nospell expandtab tabstop=2 shiftwidth=2 softtabstop=2
" autocmd buffer Filetype snippet   setlocal nospell noexpandtab tabstop=2 shiftwidth=2
autocmd buffer Filetype vim       setlocal nospell expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd buffer BufWinEnter *.vim  set filetype=vim
autocmd buffer BufWinEnter *.wiki set filetype=markdown


" Folding ______________________________________________________________________

" ................................................................. Fold methods

" set foldenable                         " fold by default
set nofoldenable                         " no fold by default
" set foldlevelstart=10                  " open most folds by default
" set foldnestmax=10                     " 10 nested fold max
set foldmethod=indent                " fold based on indent
" set foldmethod=syntax                  " folding based on syntax
" set foldmethod=marker

" let javaScript_fold=1                  " JavaScript
" let xml_syntax_folding=1               " XML
" let r_syntax_folding=1                 " R
" let sh_fold_enabled=1                  " sh
let vimsyn_folding='af'                " Vim script

" highlight Folded ctermbg=251

