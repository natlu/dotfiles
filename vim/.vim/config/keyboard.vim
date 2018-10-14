" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup kbd
  autocmd!
augroup END


" (re)mapping __________________________________________________________________

" ....................................................................... leader

map <SPACE> <leader>                   " SPACE is leader
" let mapleader='\<Space>'             " SPACE is leader


" Window actions _______________________________________________________________

" ............................................................... Switch windows

" easier window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Cursor _______________________________________________________________________

" ........................................................... Backspace settings

set backspace=indent,eol,start         " allow backspace in insert mode
set whichwrap=b,s,h,l,<,>,[,]          " backspace and cursor keys wrap

" ............................................................. Cursor movements

" move up/down visually, not by file lines
nnoremap k         gk
vnoremap k         gk
nnoremap j         gj
vnoremap j         gj


" Keyboard shortcuts ___________________________________________________________

" ................................................................. Copy / paste

set pastetoggle=<F3>                   " prevent cascading paste insert

" yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y         y$
nnoremap vv        V
nnoremap V         <C-v>$

" reselect/reyank text just pasted
nnoremap <leader>v gv
nnoremap <leader>V gvy
map      <leader>p pgvy

" highlight last inserted text
nnoremap <leader>i `[v`]

" disable paste mode when leaving Insert Mode
autocmd kbd InsertLeave * set nopaste


" .............................................................. Select text

" extend paragraph selection
vmap <A-k> {
vmap <A-j> }


