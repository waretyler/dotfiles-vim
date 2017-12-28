let g:plugins = 1

let sourceFileList = [
\   '$cfg/vim/plugins.vim',
\   '$cfg/vim/builtin-settings.vim',
\   '$cfg/vim/plugin-settings.vim',
\   '$cfg/vim/functions.vim',
\   '$cfg/vim/key-maps.vim',
\   '$cfg/vim/abbreviations.vim',
\   '$cfg/vim/statusline.vim',
\   '$cfg/vim/autocmd.vim',
\ ]
for sourceFile in sourceFileList
  execute 'source '.sourceFile
endfor

highlight Comment cterm=italic
