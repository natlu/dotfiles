" orignal from github/sdothum

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin settings ______________________________________________________________

" ........................................................................ Setup

" augroup plugin
"   autocmd!
" augroup END

" ....................................................................... vimwiki

let g:vimwiki_list = [{
    \   'path': '/var/efs/analytics/nlu/vimwiki'
    \ , 'syntax': 'markdown'
    \ , 'ext': '.md'
    \}]

" ....................................................................... Nvim R

" use rtichoke
" let R_app = "rtichoke"
" let R_cmd = "R"
" let R_ht_term = 0
" let R_args = []
" let R_bracketed_paste = 1

" diable _ to <-
let R_assign = 0


" tmux compatability
" let R_source = '~/.vim/plugged/Nvim-R/R/tmux_split.vim'
" let R_in_buffer = 0
" let R_tmux_split = 1
" let R_tmux_close = 0


" ........................................................................ Slime

" always use tmux
let g:slime_target = "tmux"

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
" let g:slime_default_config = {
"             \ 'socket_name': get(split($TMUX, ','), 0),
"             \ 'target_pane': '{top-right}' }
" let g:slime_dont_ask_default = 1

" noremap <C-r> :SlimeSendCurrentLine <CR>
noremap <leader>l :SlimeSendCurrentLine <CR>
noremap <leader>d :SlimeSendCurrentLine <CR>j

" xmap <leader>r <Plug>SlimeRegionSend
xmap <leader>r <Plug>SlimeRegionSendDown
nmap <leader>r <Plug>SlimeParagraphSend

nmap <leader>w viw<Plug>SlimeRegionSend


" ............................................................... tslime_ipython
" use tags instead of marks
" noremap <C-b> :python slime_cell(delimit_cell_by='tags') <CR>

" delimit by tags, where a tag is a line containing only '## cell'
" noremap <C-b> :python slime_cell(delimit_cell_by='tags', tag='# cell') <CR>


" ................................................................. ipython-cell
 
" " Use '##' to define cells instead of using marks
" " let g:ipython_cell_delimit_cells_by = 'tags'
" 
" " map <Leader>r to run script
" " autocmd FileType python nnoremap <buffer> <Leader>r :IPythonCellRun<CR>
" 
" " map <Leader>R to run script and time the execution
" " autocmd FileType python nnoremap <buffer> <Leader>R :IPythonCellRunTime<CR>
" 
" " map <Leader>c to execute the current cell
" autocmd FileType python nnoremap <buffer> <Leader>c :IPythonCellExecuteCell<CR>
" 
" " map <Leader>C to execute the current cell and jump to the next cell
" autocmd FileType python nnoremap <buffer> <Leader>C :IPythonCellExecuteCellJump<CR>
" 
" " map <Leader>l to clear IPython screen
" " autocmd FileType python nnoremap <buffer> <Leader>l :IPythonCellClear<CR> 
" 
" " map <Leader>x to close all Matplotlib figure windows
" " autocmd FileType python nnoremap <buffer> <Leader>x :IPythonCellClose<CR>
" 
" " map [c and ]c to jump to the previous and next cell header
" autocmd FileType python nnoremap <buffer> [c :IPythonCellPrevCell<CR>
" autocmd FileType python nnoremap <buffer> ]c :IPythonCellNextCell<CR> 

" .......................................................................... Ale

" let g:ale_sign_column_always = 1
" let g:ale_sign_error         = ''
" let g:ale_sign_warning       = ''
" let g:ale_linter_aliases     =
"     \{
"     \  'wiki' : 'markdown'
"     \, 'mail' : 'markdown'
"     \}
" 
" nmap <silent><leader>k <Plug>(ale_previous_wrap)
" nmap <silent><leader>j <Plug>(ale_next_wrap)
" nmap <silent><leader>? <Plug>(ale_detail)
" nmap <silent><leader>! :ALEToggle

" ................................................................... Auto-pairs

" let g:AutoPairsMapBS              = 1        " auto delete symbol pairs
" let g:AutoPairsMapSpace           = 0        " disabled to make iabbrev work!
" let g:AutoPairsFlyMode            = 1        " auto pair jumping
" let g:AutoPairsShortcutBackInsert = '<C-BS>' " undo auto pair jump -> close pair

" ................................................................... Easy-align

" let g:easy_align_delimiters =
"     \{
"     \  '>' : { 'pattern' : '>>\|=>\|>' }
"     \, '^' : { 'pattern' : '=',        'left_margin' : 0, 'right_margin' : 0, 'align' : 'right' }
"     \, '(' : { 'pattern' : '(',        'left_margin' : 1, 'right_margin' : 0 }
"     \, ')' : { 'pattern' : ')',        'left_margin' : 0 }
"     \, ']' : { 'pattern' : ']',        'left_margin' : 1 }
"     \}

" vmap <Enter>   <Plug>(EasyAlign)
" nmap <leader>a <Plug>(EasyAlign)
"
" format markdown table
" vmap <Bar>     :EasyAlign! *<Bar><CR>

xmap ga <Plug>(EasyAlign)

nmap ga <Plug>(EasyAlign)


" ......................................................................... Goyo
" f8 to toggle Goyo
" nnoremap <F8> :Goyo<cr>

" let g:goyo_width=100

" ..................................................................... NERDTree
" f9 to toggle nerdtree
nnoremap <F9> :NERDTreeToggle<cr>

" autostart if vim start with no file
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in) | NERDTree | endif

" autostart if start vim in directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0] && exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim in only window is nerdtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExandpable = '+'
let g:NERDTreeDirArrowCollapsible = '-' 


" vim-nerdtree-syntax-highlight settings
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1


" .................................................................. Eightheader

" justified fold headers
" let &foldtext =
"     \"EightHeaderFolds(
"     \  '\\=s:fullwidth'
"     \, 'left'
"     \, [repeat( '  ', v:foldlevel - 1 ), ' ', '']
"     \, '\\= s:foldlines . \" lines\"'
"     \, ''
"     \)"
" matchstr(s:str, ';\\@<=.*')
set fillchars=fold:\ 
let &foldtext =
      \"EightHeaderFolds(
      \   80
      \, 'left'
      \, [ repeat(' ', indent(v:foldstart)).repeat( '  ', v:foldlevel - 1).'→ ', ' ', '' ]
      \, '\\=s:foldlines . \" lines\"'
      \, '\\=s:str[0:(70 - len(s:foldlines) - indent(v:foldstart))]'
      \)"
" \, [ repeat( '→ ', v:foldlevel ), ' ', '' ]
" \, [ repeat( '  ', v:foldlevel - 1).'→ ', ' ', '' ]
" \, '\\=s:str[0:68]'
      " \, '\\=s:foldlines . \" lines\"'
      " \, matchstr(s:str, "^[^#]*")
" \, '\\=s:str[0:(70 - len(s:foldlines))]'
"
" let &foldtext =
"       \"EightHeaderFolds(
"       \   80
"       \, 'right'
"       \, [ repeat( '  ', v:foldlevel - 1).'→ ', ' ', '' ]
"       \, '\\=repeat(\" \", 71 - len(s:str) - len(s:foldlines) - v:foldlevel) . s:foldlines . \" lines\"'
"       \, '\\=s:str[0:(70 - len(s:foldlines) - v:foldlevel)]'
"       \)"


" .................................................................... lightline

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'right': [ [ 'lineinfo', 'syntastic' ],
      \              [ 'percent'  ] ]
      \ },
      \ }


" ........................................................................ theme

" .......... gruvbox .......... "

set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
" colorscheme corvine

" :hi Normal
" hi Folded ctermbg=235

" let foo=synIDattr(synIDtrans(hlID('Normal')), 'bg') 
let foo=synIDattr(hlID('Normal'), 'bg') 
exe 'hi Folded ctermbg=' . foo


" hi Folded ctermbg=synIDattr(synIDtrans(hlID('Normal')), 'bg')

" .......... shoji .......... "

" colorscheme shoji_niji
" set termguicolors
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif 

" .......................................................................... Fzf

" let g:fzf_colors =
"     \{
"     \  'fg'      : ['fg', 'Normal']
"     \, 'bg'      : ['bg', 'Normal']
"     \, 'hl'      : ['fg', 'Special']
"     \, 'fg+'     : ['fg', 'CursorLine']
"     \, 'bg+'     : ['bg', 'CursorLine']
"     \, 'hl+'     : ['fg', 'Special']
"     \, 'info'    : ['fg', 'Special']
"     \, 'border'  : ['fg', 'Ignore']
"     \, 'prompt'  : ['fg', 'Directory']
"     \, 'pointer' : ['fg', 'Special']
"     \, 'marker'  : ['fg', 'Special']
"     \, 'spinner' : ['fg', 'Special']
"     \, 'header'  : ['fg', 'Directory']
"     \}

" let g:fzf_colors =
"     \{
"     \  'fg+'     : ['fg', 'CursorLine']
"     \, 'bg+'     : ['bg', 'CursorLine']
"     \}

" close any diff buffer before leaving buffer
" nmap <silent><leader>b :silent call core#CloseDiffOrig()<CR>:Buffers<CR>
" nmap <silent><leader>l :Lines<CR>
" nmap <silent><leader>m :Marks<CR>
" nmap <leader>f       :FZF<CR>       " see notational-fzf for extended content search
nnoremap <silent> <Leader>f :Files<CR>

" ............................................................... Graphical undo

" let g:gundo_width           = 30
" let g:gundo_preview_bottom  = 1
" let g:gundo_preview_height  = 20
" let g:gundo_close_on_revert = 1       " automatically close windows

" while not used for prose, gundo alters markdown filetype to conf(?)
" command! SourceUndo if !core#Prose() | execute 'GundoToggle' | endif

" nmap <silent><leader>u :GundoToggle<CR>
" nmap <silent><leader>u   :SourceUndo<CR>

" autocmd plugin BufEnter  __Gundo__         setlocal numberwidth=3 foldcolumn=0
" for instance when gundo window is orphaned (trap timing conflict)
" autocmd plugin BufHidden __Gundo_Preview__ call core#Quietly('bdelete! __Gundo_Preview__')


" .................................................................... undootree
nnoremap <F5> :UndotreeToggle<cr>
let g:undotree_ShortIndicators = 1

" ................................................................ Indent guides

" subtle highlighting of even indents only, see core#ToggleColumn(), theme#IndentTheme()
" let g:indent_guides_auto_colors = 0

" nmap <silent><leader><Bar> :IndentGuidesToggle<CR>

" .................................................................... Limelight

" let g:limelight_default_coefficient = 0.8
" let g:limelight_paragraph_span      = 0 " include preceding/following paragraphs
" let g:limelight_priority            = 1 " -1 to hlsearch highlight all paragraphs, 1 per paragraph

" ................................................................ Narrow region

" let g:nrrw_rgn_vert         = 0      " open in horizontal split buffer
" let g:nrrw_topbot_leftright = 'botright'
" let g:nrrw_rgn_nomap_nr     = 1      " disable nr mappings
" let g:nrrw_rgn_nomap_Nr     = 1
" let g:nrrw_rgn_resize_window = 'relative'
" let g:nrrw_rgn_rel_min       = 50     " relative window size

" function! s:closeNR()
"   if expand('%t') =~ 'NrrwRgn'
"     execute ':wq'
"   endif
" endfunction

" apply refresh to narrow region buffer to apply layout defaults!
" vmap <leader>n <Plug>NrrwrgnDo:call ui#Retheme()<CR>
" nmap <leader>n :call <SID>closeNR()<CR>

" ................................................................ Nerdcommenter

" let g:NERDSpaceDelims            = 1  " space after comment delimiter
" let g:NERDCompactSexyComs        = 1  " prettify multi-line
" let g:NERDDefaultAlign           = 'left'
" let g:NERDCustomDelimiters       = { 'c' : { 'left' : '//', 'right' : '' } }
" let g:NERDCommentEmptyLines      = 1  " comment blank lines
" let g:NERDTrimTrailingWhitespace = 1  " trim trailing whitespace

" <leader>cs to force commenting of first line comment
" map  <leader>c <Plug>NERDCommenterToggle
" imap ,c        <C-o>:execute "normal \<Plug>NERDCommenterToggle"<CR>

" ............................................................... Notational-fzf

" buffers load after plugins so parse command line for filename
" function! s:argFile()
"   if argc() > 0
"     return argv(argc() - 1)
"   endif
"   return ''
" endfunction

" let g:nv_search_paths          = ['./'] " default search from current directory
" let g:nv_default_extension     = ''
" let g:nv_main_directory        = './'   " create new notes in current directory
" let g:nv_use_short_pathnames   = 1
" let g:nv_create_note_window    = 'edit'
" let g:nv_preview_width         = 45

" notational path rules: [regex, rootpath, ext]
" note: regex magic is not enabled at this stage so force with '\v'
" let s:set_notational           = [['.wiki$',                           ['~/vimwiki', '~/drafts'],  'wiki' ]
"     \,                            ['.draft$',                          ['~/drafts'],               'draft']
"     \,                            ['.note$',                           ['~/notes'],                'note' ]
"     \,                            ['\v([~]|' . $HOME . '|/stow)/bin/', ['~/bin'],                  ''     ]
"     \,                            ['.vim/',                            ['~/.vim/config'],          'vim'  ]
"     \,                            ['herbstluftwm/',                    ['~/.config/herbstluftwm'], ''     ]
"     \,                            ['archlinux/',                       ['~/build/archlinux'],      ''     ]]

" dynamically setup notational-fzf :)
" for i in s:set_notational
"   if <SID>argFile() =~ i[0]
"     let g:nv_search_paths      = i[1]
"     let g:nv_default_extension = i[2]
"     break
"   endif
" endfor

" nnoremap <silent><leader>f :NV<CR>

" ....................................................................... Pencil

" let g:pencil#wrapModeDefault = 'hard' " 'hard' (def), 'soft'
" let g:pencil#textwidth       = 72     " 74 (def)
" let g:pencil#joinspaces      = 0      " 0=one_space (def), 1=two_spaces
" let g:pencil#cursorwrap      = 1      " 0=disable, 1=enable (def)
" let g:pencil#autoformat      = 1      " 0=manual, 1=auto (def)
" let g:pencil#mode_indicators =
"     \{
"     \  'hard' : 'Hard Pencil'
"     \, 'auto' : 'Auto Pencil'
"     \, 'soft' : 'Soft Pencil'
"     \, 'off'  : 'No Pencil'
"     \}

" autocmd plugin FileType markdown,mkd call pencil#init()

" ........................................................................ Sneak

" by default, use cc, cl for s, S
" let g:sneak#streak       = 1          " streak mode
" let g:sneak#s_next       = 1          " clever next, use s S for ; .
" let g:sneak#absolute_dir = 0          " next follows direction of invocation
" let g:sneak#use_ic_scs   = 1          " use vim case setting
" let g:sneak#prompt       = '>'        " prompt
" let g:sneak#label        = 1          " label mode

" " remap sneak_s to preserve s
" function! Sneak_f()
"   if !exists("g:sneak_f")
"     let g:sneak_f = 1
"     unmap s
"     unmap S
"     call core#Colemak()
"     nmap f <Plug>Sneak_s
"     nmap F <Plug>Sneak_S
"   endif
" endfunction
"
" " preserve s and remap to f
" autocmd plugin BufNewFile,BufRead * call Sneak_f()

" sneak maps s, S == cc
" nmap <leader>s cl

" replace 'f' with 1-char Sneak
" nmap f         <Plug>Sneak_f
" nmap F         <Plug>Sneak_F
" xmap f         <Plug>Sneak_f
" xmap F         <Plug>Sneak_F
" omap f         <Plug>Sneak_f
" omap F         <Plug>Sneak_F
" replace 't' with 1-char Sneak
" nmap t         <Plug>Sneak_t
" nmap T         <Plug>Sneak_T
" xmap t         <Plug>Sneak_t
" xmap T         <Plug>Sneak_T
" omap t         <Plug>Sneak_t
" omap T         <Plug>Sneak_T

" ....................................................................... Tagbar

" let g:tagbar_ctags_bin    = 'ctags-exuberant'
" let g:tagbar_map_togglesort = 'r'     " preserve sneak s

" nmap <silent><leader>t :TagbarOpenAutoClose<CR>

" ................................................................ Textobj-quote

" let s:educate = 0

" function! s:toggleEducate()
"   ToggleEducate
"   let s:educate = s:educate ? 0 : 1
"   " html <p> content shortcuts
"   if s:educate
"     imap .. …<Space>
"     imap -- <Space>&ndash;<Space>
"     imap .<Space> .<Space><CR>
"     imap ?<Space> ?<Space><CR>
"     imap !<Space> !<Space><CR>
"   else
"     iunmap ..
"     iunmap --
"     iunmap .<Space>
"     iunmap ?<Space>
"     iunmap !<Space>
"   endif
"   echo 'Typography ' . (s:educate ? 'ON' : 'OFF')
" endfunction

" nmap <silent><F11> :call <SID>toggleEducate()<CR>
" imap <silent><F11> <C-o>:call <SID>toggleEducate()<CR>

" with vim-surround: cs"q
" map  <silent>      <leader>qc <Plug>ReplaceWithCurly
" map  <silent>      <leader>qs <Plug>ReplaceWithStraight

" autocmd plugin FileType html,markdown call textobj#quote#init({ 'educate' : s:educate }) | call <SID>toggleEducate()

" ..................................................................... arpeggio

call arpeggio#map('i', '', 0, 'jk', '<Esc>')

" ..................................................................... Yankring

" let g:yankring_default_menu_mode  = 1  " menu on with no shortcut
" let g:yankring_dot_repeat_yank    = 1  " allow repeating yankring action
" let g:yankring_enabled            = 1  " disable yankring because of macro conflict
" let g:yankring_min_element_length = 5  " minimum yankring size
" let g:yankring_window_height      = 30 " horizontal window height
" let g:yankring_zap_keys           = '' " disable (conflicts with sneak)

" nmap <silent>Y         :<C-U>YRYankCount 'y$'<CR>
" nmap <silent><leader>y :YRShow<CR>


" .................................................................... vim-yoink
" 
" nmap <c-n> <plug>(YoinkPostPasteSwapBack)
" nmap <c-p> <plug>(YoinkPostPasteSwapForward)
" 
" nmap p <plug>(YoinkPaste_p)
" nmap P <plug>(YoinkPaste_P)
