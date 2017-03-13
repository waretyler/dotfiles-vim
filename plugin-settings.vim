if (g:plugins == 1)

  colorscheme kalisi

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
  " set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  " lightline status line fancy fance
  """"""""""""""""""""""""""""""""""""""""""""""""""""""{{{
  set laststatus=2 " always show status line
  set guifont=Hack:s12
  set guitablabel=%t
  " set showtabline=2
  "}}}
  " Ag
  """"""""""""""""""""""""""""""""""""""""""""""""""""""{{{
  let g:ag_prg="ag --vimgrep --smart-case -W 150"
  "}}}
  " deoplete
  """"""""""""""""""""""""""""""""""""""""""""""""""""""{{{
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#file#enable_buffer_path = 1

  let g:deoplete#sources = {}
  let g:deoplete#sources._ = ['buffer']
  let g:deoplete#sources.php = ['buffer', 'tag']
  let g:deoplete#sources.js = ['buffer', 'tag']

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

  " let g:neotags_enabled = 1
  let g:neotags_appendpath = 0
  let g:neotags_recursive = 0

  let g:neotags_ctags_bin = 'ag -g "" '. getcwd() .' | ctags'
  let g:neotags_ctags_args = [
              \ '-L -',
              \ '--fields=+l',
              \ '--c-kinds=+p',
              \ '--c++-kinds=+p',
              \ '--sort=no',
              \ '--extra=+q'
              \ ]

  " signify
  let g:signify_vcs_list = [ 'git', 'svn' ]
  omap ic <plug>(signify-motion-inner-pending)
  xmap ic <plug>(signify-motion-inner-visual)
  omap ac <plug>(signify-motion-outer-pending)
  xmap ac <plug>(signify-motion-outer-visual)

  " vdebug
  let g:vdebug_options = {}
  let g:vdebug_options['path_maps'] = {"/var/www/tware.tsheets-dev.com": "/Users/tware/Projects/tsheets/lntxweb1"}

  " GNU Global
  let GtagsCscope_Auto_Load = 1
  let GtagsCscope_Auto_Map = 1
  let GtagsCscope_Quiet = 1
  set cscopetag

endif