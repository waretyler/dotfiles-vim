" function! <SID>StripTrailingWhitespaces()
"   " Preparation: save last search, and cursor position.
"   let _s=@/
"   let l = line(".")
"   let c = col(".")
"
"   " Do the business:
"   %s/\s\+$//e
"   " Clean up: restore previous search history, and cursor position
"   let @/=_s
"   call cursor(l, c)
"
" endfunction
" function! <SID>AddSemiColon()
"   " Preparation: save last search, and cursor position.
"   let _s=@/
"   let l = line(".")
"   let c = col(".")
"
"   " Do the business:
"   s/\(,\|;\)*\s*$/;/e
"   " Clean up: restore previous search history, and cursor position
"   let @/=_s
"   call cursor(l, c)
"
" endfunction
" function! <SID>AddComma()
"   " Preparation: save last search, and cursor position.
"   let _s=@/
"   let l = line(".")
"   let c = col(".")
"
"   " Do the business:
"   s/\(,\|;\)*\s*$/,/e
"   " Clean up: restore previous search history, and cursor position
"   let @/=_s
"   call cursor(l, c)
"
" endfunction
"
function! SourceFunction()
  let command='svn st | egrep "^(M|A|\?|D|R|C)" | sed "s/^[^ ][ ]*//" | perl -pe "chomp if eof" | tr "\n" ":"'
  let value=system(command)
  exec 'Denite file_rec:'.value
endfunction

function! OpenInPHPStorm()
  let l = line(".")
  let cmd='pstorm -l '.l.' '.expand('%')

  silent exec '!'.cmd
endfunction
command! OpenInPHPStorm :call OpenInPHPStorm()

  " redir => stdout
  " silent exec 'r !'.cmd
  " redir END
  " put =stdout 


function! TSRunTest()
  let l = line(".")
  let cmd='ts test --remote tware.tsheets-dev.com --line '.l.' '.expand('%')
  exec 'Term '.cmd
endfunction
command! TSRunTest :call TSRunTest()

function! TSRerunTest()
  let cmd='ts test --rerun'
  exec 'Term '.cmd
endfunction
command! TSRerunTest :call TSRerunTest()

