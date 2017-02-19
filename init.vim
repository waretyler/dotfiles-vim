" let sourceFileList = [
" \   '$config/vim/local.vim',
" \   '$config/vim/plugins.vim',
" \   '$config/vim/builtin-settings.vim',
" \   '$config/vim/plugin-settings.vim',
" \   '$config/vim/abbreviations.vim',
" \   '$config/vim/functions.vim',
" \   '$config/vim/key-maps.vim',
" \   '$config/vim/autocmd.vim',
" \ ]
"
" for sourceFile in sourceFileList
"   source expand(sourceFile)
" endfor

source $config/vim/local.vim
source $config/vim/plugins.vim

source $config/vim/builtin-settings.vim
source $config/vim/plugin-settings.vim

source $config/vim/abbreviations.vim
source $config/vim/functions.vim

source $config/vim/key-maps.vim
source $config/vim/autocmd.vim
