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

if (g:plugins == 1)
	call denite#custom#option('default', 'prompt', '>>>')
  
  call denite#custom#alias('source', 'file_rec/svn', 'file_rec')
  " call denite#custom#var('file_rec/svn', 'command', 'svn st | egrep "^(M|A|\?|D|R|C)" | sed "s/^[^ ][ ]*//"')
  call denite#custom#var('file_rec/svn', 'command', ['svn_list'])

	call denite#custom#var('file_rec', 'command',
	\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
endif
