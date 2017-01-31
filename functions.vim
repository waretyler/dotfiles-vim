function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)

endfunction
function! <SID>AddSemiColon()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business:
  s/\(,\|;\)*\s*$/;/e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)

endfunction
function! <SID>AddComma()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")

  " Do the business:
  s/\(,\|;\)*\s*$/,/e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)

endfunction

function! TransformJs()
  " replace var with let
  %s/var\s/let /

  " bring curly brace up on line
  g/)\s*\n\s*{/normal J
  g/else\s*\n\s*{/normal J
  g/=>\s*\n\s*{/normal J
  g/=\s*\n\s*{/normal J
  g/class.*\n\s*{/normal J

  " Put else on next line
  g/}\s*else/normal f}a
endfunction

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
