" Loads and decodes a json file, allowing vim escape sequences to be preserved 
function! JsonDecodeFile(fileName, flag)
  let fileName = expand(a:fileName)

  if !filereadable(fileName)
    return []
  endif

  if exists("*json_decode") 
    let file = readfile(fileName)

    if a:flag == 'extra'
      let file = map(file, {key, val -> substitute(val, '\\\([^\"]\)', '\\\\\1', 'g')})
    endif

    if !has('nvim')
      let file = join(file, '')
    endif

    let decode = json_decode(file)
  else
    let decodeStr = system('cat -v '.fileName.'| tr "\n" " " | sed ''s/[ ]\+/ /g'' | sed "s/''/\\\''/g" | sed "s/\([^\]\)\"/\1''/g" | sed "s/[\]\"/\"/g"') 
    execute 'let decode = '.decodeStr
  endif
  
  return decode
endfunction

function! RunForList(list, Callback)
  for item in a:list
    call a:Callback(item)
  endfor
endfunction

function! RunForJsonConfigFile(fileName, Callback)
  let config = JsonDecodeFile(a:fileName, '')
  
  if type(config) == v:t_dict
    if has_key(config, 'vim')
      call RunForList(config.vim, a:Callback)
    endif 

    if has_key(config, 'nvim') && has('nvim')
      call RunForList(config.nvim, a:Callback)
    endif 
  elseif type(config) == v:t_list
      call RunForList(config, a:Callback)
  endif
endfunction

function! SourceFile(fileRoot, sourceFile)
  execute 'source 'a:fileRoot.'/'.a:sourceFile
endfunction

function! SourceListFromFile(fileName)
  let fileRoot = fnamemodify(a:fileName, ':p:h')
  call RunForJsonConfigFile(a:fileName, function('SourceFile', [fileRoot]))
endfunction


