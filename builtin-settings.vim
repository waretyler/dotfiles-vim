let mapleader=" "
filetype plugin indent on

colorscheme kalisi
set background=dark
set shiftround
set relativenumber
set number

" line numbers for :Explore
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'

set noshowmode " this hides vim's 'insert message' 
set shortmess+=I " this hides the start message

set hidden
set nowrap
set wildmenu
set wildmode=full
set formatprg=par\ -er

set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2

syntax enable

set gdefault " set global as default
set ignorecase
set smartcase
set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldmethod=syntax

let javaScript_fold=1
let perl_fold=1
let php_folding=1
let r_syntax_folding=1
let ruby_fold=1
let sh_fold_enabled=1
let vimsyn_folding='af'
let xml_syntax_folding=1

set listchars=tab:▸\ ,eol:¬
