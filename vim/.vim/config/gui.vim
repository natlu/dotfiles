" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Display ______________________________________________________________________

" ....................................................................... Screen

set gcr=a:blinkon0                     " disable cursor blink
set t_Co=256                           " 256 color support
" set viewoptions=folds,options,cursor,unix,slash
set virtualedit=block                  " allow virtual editing in Visual block mode
" set virtualedit=onemore              " allow for cursor beyond last character
set winminheight=0                     " minimum window height
set wrap                               " wrap lines for viewing

" ....................................................................... Alerts

set noerrorbells                       " don't beep
set shortmess+=filmnrxoOtT             " abbrev. of messages (avoids "hit enter")
set visualbell                         " no sounds

" recover last error message
nmap <leader>e :echo errmsg<CR>


" .................................................................... Scrolling

let g:scrolloff = 5                    " num lines to show above or below cursor
set sidescroll=1                       " smooth scrolling by 1 column

" Terminal _____________________________________________________________________

" ......................................................................... Font

scriptencoding utf-8
set encoding=utf-8                     " necessary to show unicode glyphs

" ....................................................................... Cursor

set cursorline                         " highlight current line

set guicursor=a:block                  " mode aware cursors
set guicursor+=o:hor50-Cursor
set guicursor+=n:Cursor
set guicursor+=i-ci-sm:ver25-InsertCursor
set guicursor+=r-cr:hor15-ReplaceCursor
set guicursor+=c:CommandCursor
set guicursor+=v-ve:VisualCursor
set guicursor+=a:blinkon0

autocmd InsertEnter,InsertLeave * set cul!

" ................................... Gvim Options (make it look like terminal!)

set guioptions+=LlRrb                  " hide scrollbars
set guioptions-=LlRrb
set guioptions-=m                      " no menubar
set guioptions-=T                      " no toolbar

" Look _________________________________________________________________________

" ............................................................... Column margins

set colorcolumn=0                      " highlight column

" ................................................................. Line numbers

set number
set numberwidth=5
set relativenumber

" ....................................................... Status / command lines

set laststatus=2                       " always show status line
" set ruler                            " show cursor position in status line
set noshowcmd                          " show incomplete cmds in command line
set noshowmode                         " show current mode in command line

" Highlighting _________________________________________________________________

" .......................................................... White space markers

set nolist                             " don't display tabs and trailing spaces visually
set listchars="tab:▸\<Space>"

" set listchars+=trail:_
set listchars+=trail:·
set listchars+=nbsp:.
set listchars+=extends:>
set listchars+=precedes:<
" set listchars+=eol:¬


