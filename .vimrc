set nocompatible

if exists("g:did_load_filetypes")
    filetype off
    filetype plugin indent off
endif
set runtimepath+=/usr/local/go/misc/vim
filetype plugin indent on
filetype indent on
syntax on

"encoding
scriptencoding utf-8
set encoding=utf-8

set ruler
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
syntax enable
set bg=dark
set ffs=unix,dos,mac
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set wrap

set textwidth=79
set cursorline

"show the problem column where you should break the line
set colorcolumn=+1 "textwidth+1
" set colorcolumn to a not so annoying color
highlight ColorColumn ctermbg=5
" always show statusline
set laststatus=2
" show last character
set list listchars=tab:▸\ ,eol:¬
hi NonText ctermfg=5 guifg=gray
"allows backspace to delete stuff, according to
"http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

"enable a mode in which you can copy and paste from other sources easily
set pastetoggle=<F2>

" Persistant undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" no backups, what are VCS there for?
set nobackup
set nowritebackup
set noswapfile

" depend case sensitivity on input
set ignorecase
set smartcase

" macros

let @f = '{gq}'

" go fmt go files automatically at save
autocmd FileType go autocmd BufWritePre <buffer> Fmt
