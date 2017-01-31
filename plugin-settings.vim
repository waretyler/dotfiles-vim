let g:syntastic_mode_map = {
\ "mode": "active",
\ "passive_filetypes": ["tex"] }

let g:syntastic_html_tidy_ignore_errors=[
  \'<ir-',
  \'<md-',
   \'proprietary attribute "ng-',
   \'proprietary attribute "ir-',
   \'<ng-include> is not recognized!',
   \'discarding unexpected <ng-include>',
   \'discarding unexpected </ng-include>',
   \'discarding unexpected </ir-',
   \'discarding unexpected </md-',
   \'trimming empty <span>'
\]

let g:syntastic_javascript_eslint_ignore_warnings=[
  \'Unexpected console statement. (no-console)'
\]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" lightline status line fancy fance
""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
set laststatus=2 " always show status line
set guifont=Hack:s12
set guitablabel=%t
set showtabline=2
"}}}
" Ctrl-P
""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(\.(git|idea)|node_modules|dist|build)$',
  \ 'file': '\.DS_STORE'
\ }


map <leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_open_multiple_files = 'jr'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
"}}}
" Ag
""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let g:ag_prg="ag --vimgrep --smart-case -W 150"
"}}}
" deoplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1

" let g:min_pattern_length = 1
" inoremap <expr> <CR>
"     \ pumvisible() ? deoplete#mappings#close_popup() :
"     \ "\<CR>"

" Use tab instead
" inoremap <silent><expr> <Tab>
"     \ pumvisible() ? "\<C-n>" :
"     \ deoplete#mappings#manual_complete()
" inoremap <silent><expr> <S-Tab>
"     \ pumvisible() ? "\<C-p>" :
"     \ deoplete#mappings#manual_complete()

"}}}

call fake#define('sentense', 'fake#capitalize('
                        \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
                        \ . ' . fake#chars(1,"..............!?"))')

call fake#define('paragraph', 'join(map(range(fake#int(3,10)),"fake#gen(\"sentense\")"))')

let g:fixmyjs_rc_path = '$st/.eslintrc'
