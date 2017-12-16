"****************************************************************************
"" .vimrc
"" Package manager : Pathogen
""
"" L. Gloege November 2017
"*****************************************************************************
set nocompatible

" Start pathogen
execute pathogen#infect()

" settings
filetype plugin indent on
syntax on
syntax enable
let mapleader=","

" set colorscheme
colorscheme badwolf

" make tabs be four spaces
set tabstop=4
set softtabstop=4
set expandtab

"show line number and relative numberr
"this is nice for jumping around
set number
set relativenumber

" show command in bottom bar
set showcmd
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shellescape(@%, 1)<cr>

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

"" Split
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
