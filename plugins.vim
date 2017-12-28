if (g:plugins == 1)
  call plug#begin('~/.local/share/nvim/plugged')
  let plugList = [
        \   '~/.fzf',
        \   'chemzqm/vim-easygit',
        \   'chrisbra/csv.vim',
        \   'chrisbra/NrrwRgn',
        \   'critiqjo/lldb.nvim',
        \   'wincent/terminus',
        \   'easymotion/vim-easymotion',
        \   'freeo/vim-kalisi',
        \   'Houl/vim-repmo',
        \   'jez/vim-superman',
        \   'junegunn/fzf.vim',
        \   'junegunn/goyo.vim',
        \   'junegunn/limelight.vim',
        \   'lervag/vimtex',
        \   'mhinz/vim-signify',
        \   'morhetz/gruvbox',
        \   'nathanaelkane/vim-indent-guides',
        \   'PeterRincker/vim-argumentative',
        \   'Raimondi/delimitMate',
        \   'scrooloose/nerdtree',
        \   'shawncplus/phpcomplete.vim',
        \   'Shougo/neco-vim',
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
        \   'rust-lang/rust.vim',
        \   'tpope/vim-unimpaired',
        \   'itchyny/lightline.vim',
        \   'vim-scripts/taglist.vim',
        \   'whatot/gtags-cscope.vim',
        \ ]

        if has('nvim')
          let plugList = plugList + [
          \   'Shougo/deoplete.nvim',
          \   'zchee/deoplete-zsh',
          \   'Shougo/neoinclude.vim',
          \   'mklabs/split-term.vim',
          \   'chemzqm/denite-git',
          \   'Shougo/dein.vim',
          \   'Shougo/denite.nvim',
          \ ]
        endif

  for plugin in plugList
    exec 'Plug '''.plugin.''''
  endfor

  call plug#end()

endif

