" original from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')


" Interface ____________________________________________________________________

" ....................................................................... Layout

Plug 'morhetz/gruvbox'                 " easily distinguishable colours
" Plug 'nightsense/shoji'              " Syntax w/ colourful bkg highlighting
" Plug 'kamwitsta/flatwhite-vim'       " atom light background theme
" Plug 'NLKNguyen/papercolor-theme'    " paper theme
" Plug 'junegunn/seoul256.vim'         " based on seoul colours
" Plug 'tlhr/anderson.vim'             " wes anderson colours
" Plug 'sheerun/vim-wombat-scheme'
" Plug 'reedes/vim-colors-pencil'      " for use with Goyo
" Plug 'arzg/vim-corvine'              " The Raven Dark colourscheme for Vim

" ........................................................................... UI
" Plug 'junegunn/limelight.vim'          " hyperfocus highlighting
" Plug 'blueyed/vim-diminactive'         " dim inactive windows
Plug 'TaDaa/vimade'                    " fade inactive windows
Plug 'itchyny/lightline.vim'           " status bar
Plug 'lilydjwg/colorizer'              " colourise text like #rrggbb or #rgb
" Plug 'machakann/vim-highlightedyank' " highlight yanked text

" ......................................................................... Info

" Plug 'bimlas/vim-eightheader'          " custom foldtext
" Plug 'majutsushi/tagbar'             " ctags
" Plug 'junegunn/vim-peekaboo'         " peek at registers
" Plug 'Yilin-Yang/vim-markbar'        " sidebar for marks

" ....................................................................... Keymap

Plug 'kana/vim-arpeggio'               " key chords
" Plug 'tpope/vim-rsi'                 " readline keybindings
" Plug 'tpope/vim-tbone'               " vim tmux stuff
Plug 'christoomey/vim-tmux-navigator'  " navigate b/w tmux and vim

" ................................................................. Highlighting

" Plug 'markonm/traces.vim'              " ex pattern/range highlghting
" Plug 'itchyny/vim-cursorword'          " word highlighting
" Plug 'nathanaelkane/vim-indent-guides', { 'on' : 'IndentGuidesToggle' } " colourized indent columns

" ......................................................................... Tmux


" Buffers ______________________________________________________________________

" ................................................................... Management

" Plug 'chrisbra/NrrwRgn', { 'on' : 'NrrwrgnDo' } " visual block buffer
" Plug 'junegunn/goyo.vim'               " distraction free writing

" .............................................................. Version control

Plug 'tpope/vim-fugitive'              " git wrapper
" Plug 'airblade/vim-gitgutter'        " git diff symbols
" Plug markwoodhall/vim-mercurial      " mercurial wrapper
" Plug 'mhinz/vim-signify'             " vcs diff

" .................................................................... Hypertext

Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'                " fuzzy finder
" Plug 'Alok/notational-fzf-vim'       " fzf note search

" ....................................................................... Linter

" Plug 'w0rp/ale'                        " asynchronous lint engine

" ............................................................................ R

" Plug 'jalvesaq/Nvim-R'                 " R plugin

" ..............................................................................

Plug 'jpalardy/vim-slime'
" Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
" Plug 'eldridgejm/tslime_ipython'





" Editing ______________________________________________________________________

" Plug 'vimwiki/vimwiki'
"
" ................................................................... Navigation

" Plug 'wellle/targets.vim'            " text objects
" Plug 'Konfekt/FastFold'              " update folds
" Plug 'kshenoy/vim-signature'         " toggle marks
" Plug 'justinmk/vim-sneak'            " jump to location
Plug 'scrooloose/nerdtree'             " tree explorer
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree colours
Plug 'wellle/targets.vim'              " text object navigation
Plug 'terryma/vim-expand-region'       " visually select regions of text
" Plug 'kana/vim-textobj-fold'           " fold text object

" ...................................................................... History

" Plug 'sjl/gundo.vim', { 'on' : 'GundoToggle' } " undo
Plug 'mbbill/undotree'                 " undo
" Plug 'vim-scripts/YankRing.vim'      " paste (yank)
" Plug 'svermeulen/vim-yoink'          " paste (yank)

" ................................................................... Formatting

Plug 'junegunn/vim-easy-align'         " align text objects
Plug 'tpope/vim-commentary'            " comments
" Plug 'scrooloose/nerdcommenter'      " toggle comment
" Plug 'reedes/vim-pencil'             " dynamic paragraph formatting
" Plug 'dbmrq/vim-chalk'               " marker folds

" ................................................................... Completion

" Plug 'jiangmiao/auto-pairs'          " insert/delete pairs
" Plug 'kana/vim-textobj-user'         " dependency
Plug 'tpope/vim-surround'              " pairwise c'hange, d'elete, y'ank
Plug 'tpope/vim-repeat'                " enable repeating supported plugin maps
Plug 'ajh17/VimCompletesMe'            " vim completion

"........................................................................ Table

" Plug 'dhruvasagar/vim-table-mode'      " operations on tables

" ........................................................... Search and Replace

" Plug 'osyo-manga/vim-over'             " live search and replace


call plug#end()

filetype plugin on
filetype indent on                     " required
filetype on


