function! LoadPlugin(plugin)
  execute 'Plug '''.a:plugin.''''
endfunction

if (g:plugins == 1)
  call plug#begin('~/.local/share/nvim/plugged')
    call RunForJsonConfigFile(g:rootConfigPath.'/plugin-lists.json', function('LoadPlugin'))
  call plug#end()

  call SourceListFromFile(g:rootConfigPath.'/plugins/source-list.json')
endif
