" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')


" Interface ____________________________________________________________________

" ....................................................................... Layout

Plug 'junegunn/limelight.vim'          " hyperfocus highlighting
Plug 'morhetz/gruvbox'                 " easily distinguishable colours

" ......................................................................... Info

" Plug 'majutsushi/tagbar'             " ctags
Plug 'bimlas/vim-eightheader'          " custom foldtext

" ....................................................................... Keymap

Plug 'kana/vim-arpeggio'               " key chords
" Plug 'tpope/vim-rsi'                 " readline keybindings

" ................................................................. Highlighting

" Plug 'markonm/traces.vim'            " ex pattern/range highlghting
" Plug 'itchyny/vim-cursorword'        " word highlighting
" Plug 'nathanaelkane/vim-indent-guides', { 'on' : 'IndentGuidesToggle' } " colourized indent columns

" Buffers ______________________________________________________________________

" ................................................................... Management

" Plug 'chrisbra/NrrwRgn', { 'on' : 'NrrwrgnDo' } " visual block buffer

" .............................................................. Version control

" Plug 'tpope/vim-fugitive'            " github wrapper
" Plug markwoodhall/vim-mercurial      " mercurial wrapper
" Plug 'mhinz/vim-signify'             " vcs diff

" .................................................................... Hypertext

Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'                " fuzzy finder
" Plug 'Alok/notational-fzf-vim'       " fzf note search

" ....................................................................... Linter

Plug 'w0rp/ale'                        " asynchronous lint engine

" Editing ______________________________________________________________________

" ................................................................... Navigation

" Plug 'wellle/targets.vim'            " text objects
" Plug 'Konfekt/FastFold'              " update folds
" Plug 'kshenoy/vim-signature'         " toggle marks
" Plug 'justinmk/vim-sneak'            " jump to location

" ...................................................................... History

" Plug 'sjl/gundo.vim', { 'on' : 'GundoToggle' } " undo
" Plug 'vim-scripts/YankRing.vim'      " paste (yank)

" ................................................................... Formatting

" Plug 'scrooloose/nerdcommenter'      " toggle comment
Plug 'junegunn/vim-easy-align'         " align text objects
" Plug 'reedes/vim-pencil'             " dynamic paragraph formatting

" ................................................................... Completion

" Plug 'jiangmiao/auto-pairs'          " insert/delete pairs
" Plug 'kana/vim-textobj-user'         " dependency
Plug 'tpope/vim-surround'              " pairwise c'hange, d'elete, y'ank



call plug#end()

filetype plugin on
filetype indent on                     " required
filetype on


