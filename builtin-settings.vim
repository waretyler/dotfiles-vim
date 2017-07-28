let mapleader=" "

filetype plugin on

" SUPER SLOW on big files :(
" filetype indent on

set shiftround
set relativenumber
set number

set background=dark

" line numbers for :Explore
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'

set noshowmode " this hides vim's 'insert message' 
set shortmess+=I " this hides the start message

set hidden
set nowrap
set wildmenu
set wildmode=full
set formatprg=par\ -er

"would be great to be able to use shell functions & commands in here
"set shellcmdflag=-i\ -c
"set shell=zsh\ -i\ -c

set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/tware/Projects/tsheets'
    setlocal tabstop=4 shiftwidth=4 softtabstop=4
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

syntax enable

set gdefault " set global as default
set ignorecase
set smartcase
set incsearch
set hlsearch

set inccommand=split

set foldenable

"" SLOW on large files
"set foldlevelstart=10
"set foldmethod=syntax

" let javaScript_fold=1
" let perl_fold=1
" let php_folding=1
" let r_syntax_folding=1
" let ruby_fold=1
" let sh_fold_enabled=1
" let vimsyn_folding='af'
" let xml_syntax_folding=1

set listchars=tab:▸\ ,eol:¬

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

