let g:plugins = 1

let vimRoot = $cfg.'/vim'

let sourceFileList = [
\   '/plugins.vim',
\   '/builtin-settings.vim',
\   '/plugin-settings.vim',
\   '/functions.vim',
\   '/key-maps.vim',
\   '/abbreviations.vim',
\   '/statusline.vim',
\   '/autocmd.vim',
\ ]

for sourceFile in sourceFileList
  execute 'source '.vimRoot.sourceFile
endfor

let localVimRoot = vimRoot.'/local'
if isdirectory(localVimRoot) && filereadable(localVimRoot.'/init.vim')
  execute 'source '.localVimRoot.'/init.vim' 
endif

highlight Comment cterm=italic
