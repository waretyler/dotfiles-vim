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
        \   'PeterRincker/vim-argumentative',
        \   'Raimondi/delimitMate',
        \   'rking/ag.vim', 
        \   'scrooloose/nerdtree',
        \   'Shougo/dein.vim',
        \   'Shougo/denite.nvim',
        \   'Shougo/deoplete.nvim',
        \   'Shougo/neco-vim',
        \   'Shougo/neoinclude.vim',
        \   'Shougo/vimshell.vim',
        \   'sjl/vitality.vim',
        \   'StanAngeloff/php.vim',
        \   'tkhren/vim-fake',
        \   'tomtom/tcomment_vim',
        \   'tpope/vim-eunuch',
        \   'vim-scripts/taglist.vim',
        \   'tpope/vim-fugitive',
        \   'tpope/vim-git',
        \   'tpope/vim-repeat',
        \   'tpope/vim-speeddating',
        \   'tpope/vim-surround',
        \   'tpope/vim-unimpaired',
        \   'whatot/gtags-cscope.vim',
        \   'zchee/deoplete-zsh',
        \ ]

        " \   'mxw/vim-jsx',
        " \   'pangloss/vim-javascript',
        ""\   'arakashic/chromatica.nvim',

  for plugin in plugList
    call dein#add(plugin)
  endfor

  call dein#end()

  if dein#check_install()
    call dein#install()
  endif
endif

