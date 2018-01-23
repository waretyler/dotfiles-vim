if (g:plugins == 1)

  colorscheme gruvbox

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

  if has("nvim")
  " deoplete
  """"""""""""""""""""""""""""""""""""""""""""""""""""""{{{
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#file#enable_buffer_path = 1

  let g:deoplete#sources = {}
  let g:deoplete#sources._ = ['ultisnips', 'buffer']
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
  "

  " let g:indent_guides_start_level = 2
  " let g:indent_guides_guide_size = 1
  " let g:indent_guides_color_change_percent = 0

  call fake#define('sentense', 'fake#capitalize('
                          \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
                          \ . ' . fake#chars(1,"..............!?"))')

  call fake#define('paragraph', 'join(map(range(fake#int(3,10)),"fake#gen(\"sentense\")"))')

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
  " Denite:
  call denite#custom#option('default', 'prompt', '>>>')
  call denite#custom#alias('source', 'file_rec/svn', 'file_rec')
  call denite#custom#alias('source', 'file_rec/git-svn', 'file_rec')
  call denite#custom#var('file_rec/svn', 'command', ['svn_list'])
  call denite#custom#var('file_rec/git-svn', 'command', ['git_svn_diff_ls'])
  call denite#custom#var('file_rec', 'command',
        \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

  call denite#custom#alias('source', 'file_rec/git', 'file_rec')
  call denite#custom#var('file_rec/git', 'command',
        \ ['git', 'ls-files', '-co', '--exclude-standard'])

  endif
  " Lighline:
  let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

  " Signify:
  let g:signify_vcs_list = [ 'git', 'svn' ]
  omap ic <plug>(signify-motion-inner-pending)
  xmap ic <plug>(signify-motion-inner-visual)
  omap ac <plug>(signify-motion-outer-pending)
  xmap ac <plug>(signify-motion-outer-visual)

  " " VDebug:
  " let g:vdebug_options = {}
  " let g:vdebug_options['path_maps'] = {"/var/www/tware.tsheets-dev.com": "/Users/tware/Projects/tsheets/lntxweb1"}
  "
  " GNU Global:
  let GtagsCscope_Auto_Load = 1
  let GtagsCscope_Auto_Map = 1
  let GtagsCscope_Quiet = 1
  set cscopetag

  " chromatica
  " let g:chromatica#enable_at_startup=1
  " let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'
  "


  " CSV:
  let b:csv_arrange_use_all_rows = 1

  " PhpVim:
  " function! PhpSyntaxOverride()
  "   hi! def link phpDocTags  phpDefine
  "   hi! def link phpDocParam phpType
  " endfunction
  "
  " augroup phpSyntaxOverride
  "   autocmd!
  "   autocmd FileType php call PhpSyntaxOverride()
  " augroup END
  let g:nrrw_rgn_nomap_nr = 1
  let g:nrrw_rgn_nomap_Nr = 1

  let g:limelight_conceal_ctermfg = 'gray'
  let g:limelight_conceal_ctermfg = 240


  command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, 
    \                 '--hidden --ignore .git --ignore .idea',
    \                 <bang>0 ? fzf#vim#with_preview('up:60%')
    \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
    \                 <bang>0)

  let g:UltiSnipsSnippetDirectories=["snips", "docs"]

endif
