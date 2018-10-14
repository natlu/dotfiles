" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Edit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Text shift ___________________________________________________________________

" ........................................................................ Shift

" see https://github.com/gorkunov/vimconfig.git
function! s:moveLineOrVisualUpOrDown(move)
  let l:col = virtcol('.')
  execute 'silent! ' . a:move
  execute 'normal! ' . l:col . '|'
endfunction

function! s:moveLineOrVisualUp(line_getter, range)
  let l:line = line(a:line_getter)
  if l:line - v:count1 - 1 < 0
    let l:move = '0'
  else
    let l:move = a:line_getter . ' -' . (v:count1 + 1)
  endif
  call <SID>moveLineOrVisualUpOrDown(a:range . 'move ' . l:move)
endfunction

function! s:moveLineOrVisualDown(line_getter, range)
  let l:line = line(a:line_getter)
  if l:line + v:count1 > line('$')
    let l:move = '$'
  else
    let l:move = a:line_getter . ' +' . v:count1
  endif
  call <SID>moveLineOrVisualUpOrDown(a:range . 'move ' . l:move)
endfunction

function! s:moveLineUp()
  call <SID>moveLineOrVisualUp('.', '')
endfunction

function! s:moveLineDown()
  call <SID>moveLineOrVisualDown('.', '')
endfunction

function! s:moveVisualUp()
  call <SID>moveLineOrVisualUp("'<", "'<,'>")
  normal! gv
endfunction

function! s:moveVisualDown()
  call <SID>moveLineOrVisualDown("'>", "'<,'>")
  normal! gv
endfunction

" softwidth shifts, preserve selection when indenting
nnoremap <S-Left>        <<
inoremap <S-Left>        <C-d>
vnoremap <S-Left>        <gv
nnoremap <S-Right>       >>
inoremap <S-Right>       <C-t>
vnoremap <S-Right>       >gv
nmap <silent><S-Up>      :call <SID>moveLineUp()<CR>
imap <silent><S-Up>      <ESC>:call <SID>moveLineUp()<CR>a
vmap <silent><S-Up>      <ESC>:call <SID>moveVisualUp()<CR>
nmap <silent><S-Down>    :call <SID>moveLineDown()<CR>
imap <silent><S-Down>    <ESC>:call <SID>moveLineDown()<CR>a
vmap <silent><S-Down>    <ESC>:call <SID>moveVisualDown()<CR>

" byte shift left / right
nnoremap <leader><Left>  :s/^ //<CR>:silent nohlsearch<CR>
nnoremap <leader><Right> :s/^/ /<CR>:silent nohlsearch<CR>
vnoremap <leader><Left>  :s/^ //<CR>:silent nohlsearch<CR>gv
vnoremap <leader><Right> :s/^/ /<CR>:silent nohlsearch<CR>gv


" Text manipulation ____________________________________________________________

" ...................................................... Quote enclose selection

" extend enclosing %V 1 char right to enclose last character of block
vnoremap ' :s/\%V\(.*\%V.\)/'\1'/<CR>:noh<CR>`>l
vnoremap " :s/\%V\(.*\%V.\)/"\1"/<CR>:noh<CR>`>l


