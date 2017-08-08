let g:plugins = 1

let sourceFileList = [
\   '$config/vim/plugins.vim',
\   '$config/vim/builtin-settings.vim',
\   '$config/vim/plugin-settings.vim',
\   '$config/vim/abbreviations.vim',
\   '$config/vim/functions.vim',
\   '$config/vim/key-maps.vim',
\   '$config/vim/autocmd.vim',
\ ]

for sourceFile in sourceFileList
  execute 'source '.sourceFile
endfor

highlight Comment cterm=italic
