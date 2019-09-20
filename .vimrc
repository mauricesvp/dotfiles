" github.com/mauricesvp/dotfiles 

set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-obsession'

call vundle#end()

" General
filetype indent plugin on
syntax on

colo molokai-maurice

set hidden
set confirm
set wildmenu
set showcmd
set showmode

set nomodeline
set ttyfast
set history=1000

set laststatus=2

set number

set nostartofline
set backspace=indent,eol,start

set ignorecase
set smartcase
set incsearch
set hlsearch

set ai
set tw=100
set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['python', 'pep8']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pep8_post_args="--max-line-length=120"

" Bindings
inoremap kj <esc>
vnoremap v <esc>
nnoremap ; :
