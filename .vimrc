" github.com/mauricesvp/dotfiles

set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'github/copilot.vim'

Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'  " Installed as pack

Plugin 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py' }
Plugin 'psf/black'
Plugin 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

Plugin 'vim-scripts/indentpython.vim'

Plugin 'sheerun/vim-polyglot'
Plugin 'chrisbra/csv.vim'

Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'PhilRunninger/nerdtree-visual-selection'

" Plugin 'scrooloose/syntastic'
" Plugin 'AutoClose' " produces bug with arrow keys inside tmux

call vundle#end()

" General
filetype indent plugin on
syntax on

" colo molokai-maurice
colo gruvbox8

" Regarding gruvbox
set bg=dark

set cursorline
hi CursorLine cterm=none ctermbg=237 ctermfg=None

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
set tw=120
set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=tab:>·,trail:~,extends:>,precedes:<
set list

" Bindings
let mapleader = ","

" ycm
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_auto_hover = ''
nnoremap <leader>g :YcmCompleter GoTo<CR>
set completeopt-=preview

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['python', 'pep8']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pep8_post_args="--max-line-length=120"

" Black
" augroup black_on_save
" autocmd!
" autocmd BufWritePre *.py Black
" augroup end
let g:black_linelength = 130
let g:black_preview = 1
let g:black_target_version = "py310"
autocmd FileType python nnoremap <buffer> <leader>b :Black<CR>

let g:pydocstring_doq_path = '~/.local/bin/doq'
let g:pydocstring_formatter = 'google'

nnoremap <leader>s :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>t <c-w><c-w>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>r :%s/
" vimrc
nmap <silent> <leader>Qe :e $MYVIMRC<CR>
nmap <silent> <leader>Qs :so $MYVIMRC<CR>
" splitting
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h :sp<cr>
nnoremap <leader>m <C-W>_
nnoremap <leader>M <C-W>=
" NERDTree
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <C-n> :NERDTreeFocus<cr>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" nnoremap <leader>P :!python3 main.py<cr>
" nnoremap <leader>p :!python3 %<cr>

nnoremap j gj
nnoremap k gk

nmap <C-j> ]m
nmap <C-k> [m

nmap gg ggzz

inoremap kj <esc>
vnoremap v <esc>

nnoremap ; :
