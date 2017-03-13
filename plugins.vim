if (g:plugins == 1) 
  call dein#begin('~/.config/nvim')
  let plugList = [
        \   'c0r73x/neotags.nvim',
        \   'critiqjo/lldb.nvim',
        \   'easymotion/vim-easymotion',
        \   'freeo/vim-kalisi',
        \   'Houl/vim-repmo',
        \   'itchyny/lightline.vim',
        \   'jez/vim-superman',
        \   'joonty/vdebug',
        \   'juneedahamed/svnj.vim',
        \   'lervag/vimtex',
        \   'majutsushi/tagbar',
        \   'mhinz/vim-signify',
        \   'mxw/vim-jsx',
        \   'pangloss/vim-javascript',
        \   'PeterRincker/vim-argumentative',
        \   'Raimondi/delimitMate',
        \   'rking/ag.vim', 
        \   'ruanyl/vim-fixmyjs',
        \   'scrooloose/nerdtree',
        \   'Shougo/dein.vim',
        \   'Shougo/denite.nvim',
        \   'Shougo/deoplete.nvim',
        \   'Shougo/neco-vim',
        \   'Shougo/neoinclude.vim',
        \   'Shougo/vimshell.vim',
        \   'sjl/vitality.vim',
        \   'tkhren/vim-fake',
        \   'tomtom/tcomment_vim',
        \   'tpope/vim-eunuch',
        \   'tpope/vim-fugitive',
        \   'tpope/vim-git',
        \   'tpope/vim-repeat',
        \   'tpope/vim-speeddating',
        \   'tpope/vim-surround',
        \   'tpope/vim-unimpaired',
        \   'whatot/gtags-cscope.vim',
        \   'zchee/deoplete-zsh',
        \ ]
  for plugin in plugList
    call dein#add(plugin)
  endfor

  call dein#end()

  if dein#check_install()
    call dein#install()
  endif
endif

" Plugins once used, delete after review 
" 'AndrewRadev/linediff.vim'
" 'bkad/CamelCaseMotion'
" 'easymotion/vim-easymotion'
" 'ervandew/supertab'
" 'junegunn/vim-easy-align'
" 'kana/vim-textobj-entire'
" 'kana/vim-textobj-user' 
" 'marijnh/tern_for_vim'
" \ 'SirVer/ultisnips', 
" 'mhinz/vim-startify'
" 'Shougo/vimshell.vim'
" 'tmhedberg/matchit'
" 'vim-scripts/dbext.vim'

