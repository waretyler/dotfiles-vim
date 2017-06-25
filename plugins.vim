if (g:plugins == 1)
  call dein#begin('~/.config/nvim')
  let plugList = [
        \   'c0r73x/neotags.nvim',
        \   'chrisbra/csv.vim',
        \   'critiqjo/lldb.nvim',
        \   'easymotion/vim-easymotion',
        \   'freeo/vim-kalisi',
        \   'Houl/vim-repmo',
        \   'jez/vim-superman',
        \   'joonty/vdebug',
        \   'juneedahamed/svnj.vim',
        \   'lervag/vimtex',
        \   'majutsushi/tagbar',
        \   'mhinz/vim-signify',
        \   'morhetz/gruvbox',
        \   'nathanaelkane/vim-indent-guides',
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
        \   'tpope/vim-fugitive',
        \   'tpope/vim-git',
        \   'tpope/vim-repeat',
        \   'tpope/vim-speeddating',
        \   'tpope/vim-surround',
        \   'tpope/vim-unimpaired',
        \   'vim-airline/vim-airline',
        \   'vim-scripts/taglist.vim',
        \   'whatot/gtags-cscope.vim',
        \   'zchee/deoplete-zsh',
        \   'chrisbra/NrrwRgn',
        \   'shawncplus/phpcomplete.vim',
        \ ]

        " \   'vim-scripts/jcommenter.vim',
        " \   'itchyny/lightline.vim',
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

