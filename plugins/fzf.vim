command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, 
  \                 '--hidden --ignore .git --ignore .idea',
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
