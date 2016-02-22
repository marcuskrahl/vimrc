set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'OmniSharp/omnisharp-vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-dispatch'
Plug 'scrooloose/syntastic'
"Plug 'OrangeT/vim-csharp'
Plug 'file:///home/marcus/tmp/vim-csharp'
Plug 'jedverity/feral-vim'
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py' }

call plug#end()
filetype plugin indent on

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber 
" set undofile
syntax on
set background=dark
colorscheme feral

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" set wrap
" set textwidth=79
" set formatoptions=qrn1
" set colorcolumn=85

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

au FocusLost * :wa

nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s> 

let g:LatexBox_show_warnings=0

set statusline=
set statusline+=%<\                          "cut at start
set statusline+=%2*[%n%H%M%R%W]%*\           "flags
set statusline+=%-40f\                       "path
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%#warningmsg#                " switch to warning color
set statusline+=%{SyntasticStatuslineFlag()} " syntastic errors
set statusline+=%*                           " back to normal color
set statusline+=%=                           " right align
set statusline+=%10((%l,%c)%)\               " line and column
set statusline+=%P                           " percentage of file


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
