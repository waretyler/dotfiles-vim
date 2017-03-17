inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

noremap n nzz

" editing
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" H -> 0
" L -> $
" nnoremap H 0
" nnoremap L $
" onoremap H 0
" onoremap L $
" vnoremap H 0
" vnoremap L $

nnoremap g- YpVr-gqk
nnoremap g= YpVr=gqk

noremap <leader>f za

" nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
" nnoremap <silent> <leader>; :call <SID>AddSemiColon()<CR>
" nnoremap <silent> <leader>, :call <SID>AddComma()<CR>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
map <C-g> :e %:h/<cfile><CR>
map <C-*> :Ag <cword><CR>

cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

if (g:plugins == 1)
  noremap <leader>g :Gstat<CR>

  " Denite:
  noremap <M-d>f :Denite file_rec<CR>
  noremap <M-d>b :Denite buffer<CR>

  noremap <leader>t :TagbarOpen j<CR>
  " noremap <leader>e :Fixmyjs<CR>

  let g:EasyMotion_do_mapping = 0 " Disable default mappings

  " JK motions: Line motions
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)
endif
