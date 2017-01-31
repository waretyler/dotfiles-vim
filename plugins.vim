set runtimepath^=~/.local/share/dein/repos/github.com/Shougo/dein.vim

call dein#begin('~/.config/nvim')
let plugList = [
\   'ctrlpvim/ctrlp.vim',
\   'easymotion/vim-easymotion',
\   'freeo/vim-kalisi',
\   'itchyny/lightline.vim',
\   'jez/vim-superman',
\   'lervag/vimtex',
\   'mxw/vim-jsx',
\   'pangloss/vim-javascript',
\   'PeterRincker/vim-argumentative',
\   'Raimondi/delimitMate',
\   'rking/ag.vim', 
\   'scrooloose/syntastic',
\   'Shougo/dein.vim',
\   'Shougo/deoplete.nvim',
\   'Shougo/vimshell.vim',
\   'ruanyl/vim-fixmyjs',
\   'sjl/vitality.vim',
\   'tomtom/tcomment_vim',
\   'tpope/vim-eunuch',
\   'tpope/vim-fugitive',
\   'tpope/vim-git',
\   'tpope/vim-repeat',
\   'tpope/vim-surround',
\   'tpope/vim-unimpaired',
\   'vim-scripts/repmo.vim',
\   'tkhren/vim-fake',
\ ]

" Plugins once used, delete after review 
" 'AndrewRadev/linediff.vim'
" 'bkad/CamelCaseMotion'
" 'easymotion/vim-easymotion'
" 'ervandew/supertab'
" 'joonty/vdebug'
" 'junegunn/vim-easy-align'
" 'kana/vim-textobj-entire'
" 'kana/vim-textobj-user' 
" 'marijnh/tern_for_vim'
" 'mhinz/vim-startify'
" 'scrooloose/nerdtree'
" 'scrooloose/nerdtree'
" 'scrooloose/syntastic'
" 'Shougo/vimshell.vim'
" 'SirVer/ultisnips' 
" 'tmhedberg/matchit'
" 'vim-scripts/dbext.vim'
" 'vim-scripts/dbext.vim'

for plugin in plugList
  call dein#add(plugin)
endfor

call dein#end()

if dein#check_install()
 call dein#install()
endif
