"****************************************************************************
" vimrc with Plug package manager
" install vimPlug: https://github.com/junegunn/vim-plug
" 
" Python 3 support:
"    clay-atlas.com/us/blog/2021/09/04/mac-os-en-install-vim-support-python3/
" 
" L. Gloege May 2022
"*****************************************************************************
set nocompatible

" Start VimPlug
call plug#begin()
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
  Plug 'jpalardy/vim-slime', { 'for': 'python' }
  Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch' 
  Plug 'jupyter-vim/jupyter-vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/goyo.vim'
call plug#end()

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" NERDTree shortcuts
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" settings
filetype plugin indent on
syntax on
syntax enable
let mapleader=","

" set colorscheme
colorscheme badwolf

" enable transparent background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" replace tab with 4 spaces
set tabstop=4
set softtabstop=4
set expandtab

" show line number and relative number
set number
set relativenumber

" show command in bottom bar
set showcmd
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>

" open NERDTree always 
" autocmd VimEnter * NERDTree | wincmd p 

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" only redraw the screen when you need to, faster loads
set lazyredraw

" show matching brace
set showmatch

" search as characters are entered and highlihgt search
set incsearch
set hlsearch
set ignorecase

" so backspace through file
set backspace=indent,eol,start

" create backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" bottom status bar
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" disable highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" save session
nnoremap <leader>s :mksession<CR>

" mouse scrolling
set mouse=a
set scrolloff=4

"
" limelight options
"
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
