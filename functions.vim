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

