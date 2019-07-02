" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')


" Interface ____________________________________________________________________

" ....................................................................... Layout

Plug 'morhetz/gruvbox'                 " easily distinguishable colours
Plug 'nightsense/shoji'                " Syntax w/ colourful bkg highlighting
" Plug 'kamwitsta/flatwhite-vim'       " atom light background theme
" Plug 'NLKNguyen/papercolor-theme'    " paper theme
" Plug 'junegunn/seoul256.vim'         " based on seoul colours
" Plug 'tlhr/anderson.vim'             " wes anderson colours
" Plug 'reedes/vim-colors-pencil'      " for use with Goyo

" ........................................................................... UI
Plug 'junegunn/limelight.vim'          " hyperfocus highlighting
" Plug 'blueyed/vim-diminactive'       " dim inactive windows
" Plug 'itchyny/lightline.vim'         " status bar
" Plug 'itchyny/vim-cursorword'        " word underlining
" Plug 'lilydjwg/colorizer'            " colourise text like #rrggbb or #rgb
" Plug 'machakann/vim-highlightedyank' " highlight yanked text

" ......................................................................... Info

Plug 'bimlas/vim-eightheader'          " custom foldtext
" Plug 'majutsushi/tagbar'             " ctags
" Plug 'junegunn/vim-peekaboo'         " peek at registers
" Plug 'Yilin-Yang/vim-markbar'        " sidebar for marks

" ....................................................................... Keymap

Plug 'kana/vim-arpeggio'               " key chords
" Plug 'tpope/vim-rsi'                 " readline keybindings
Plug 'tpope/vim-tbone'                 " vim tmux stuff
Plug 'christoomey/vim-tmux-navigator'  " navigate b/w tmux and vim

" ................................................................. Highlighting

" Plug 'markonm/traces.vim'            " ex pattern/range highlghting
" Plug 'itchyny/vim-cursorword'        " word highlighting
" Plug 'nathanaelkane/vim-indent-guides', { 'on' : 'IndentGuidesToggle' } " colourized indent columns

" ......................................................................... Tmux

" Plug 'christoomey/vim-tmux-navigator'


" Buffers ______________________________________________________________________

" ................................................................... Management

" Plug 'chrisbra/NrrwRgn', { 'on' : 'NrrwrgnDo' } " visual block buffer
" Plug 'junegunn/goyo.vim'             " distraction free writing

" .............................................................. Version control

" Plug 'tpope/vim-fugitive'            " github wrapper
" Plug markwoodhall/vim-mercurial      " mercurial wrapper
" Plug 'mhinz/vim-signify'             " vcs diff

" .................................................................... Hypertext

Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'                " fuzzy finder
" Plug 'Alok/notational-fzf-vim'       " fzf note search

" ....................................................................... Linter

" Plug 'w0rp/ale'                        " asynchronous lint engine

" ............................................................................ R

Plug 'jalvesaq/Nvim-R'                 " R plugin

" ..............................................................................

Plug 'jpalardy/vim-slime'
" Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
" Plug 'eldridgejm/tslime_ipython'





" Editing ______________________________________________________________________

" ................................................................... Navigation

" Plug 'wellle/targets.vim'            " text objects
" Plug 'Konfekt/FastFold'              " update folds
" Plug 'kshenoy/vim-signature'         " toggle marks
" Plug 'justinmk/vim-sneak'            " jump to location
Plug 'scrooloose/nerdtree'             " tree explorer
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree colours

" ...................................................................... History

" Plug 'sjl/gundo.vim', { 'on' : 'GundoToggle' } " undo
" Plug 'vim-scripts/YankRing.vim'      " paste (yank)
" Plug 'mbbill/undootree'              " undo

" ................................................................... Formatting

Plug 'junegunn/vim-easy-align'         " align text objects
" Plug 'tpope/vim-commentary'          " comments
" Plug 'scrooloose/nerdcommenter'      " toggle comment
" Plug 'reedes/vim-pencil'             " dynamic paragraph formatting

" ................................................................... Completion

" Plug 'jiangmiao/auto-pairs'          " insert/delete pairs
" Plug 'kana/vim-textobj-user'         " dependency
Plug 'tpope/vim-surround'              " pairwise c'hange, d'elete, y'ank
" Plug 'tpope/vim-repeat'              " enable repeating supported plugin maps

" ........................................................................ Table

Plug 'dhruvasagar/vim-table-mode'      " operations on tables


call plug#end()

filetype plugin on
filetype indent on                     " required
filetype on


