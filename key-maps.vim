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
nnoremap H 0
nnoremap L $
onoremap H 0
onoremap L $
vnoremap H 0
vnoremap L $

nnoremap g- YpVr-gqk
nnoremap g= YpVr=gqk

noremap <leader>f za

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
nnoremap <silent> <leader>; :call <SID>AddSemiColon()<CR>
nnoremap <silent> <leader>, :call <SID>AddComma()<CR>
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
map <C-g> :e %:h/<cfile><CR>
map <C-*> :Ag <cword><CR>

nmap <C-S-P> :call <SID>SynStack()<CR>

cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

noremap <leader>g :Gstat<CR>

" noremap <leader>e :Fixmyjs<CR>
