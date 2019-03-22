" ====================================================
" Plugins configuration
" ====================================================

" Airline
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ALE
" Lint only when I save the file
" let g:ale_lint_on_text_changed = 'never'
" Linters
let g:ale_linters = {
\   'tex': ['chktex', 'proselint', 'write-good'],
\}

" Android
let g:android_sdk_path = "/opt/android/sdk"

" Calendar
let g:calendar_frame = 'default'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Clang completition
let g:clang_library_path='/usr/lib'
" Fix conflix with autopair
autocmd FileType c let AutoPairsMapCR = 0
autocmd FileType c imap <silent> <CR> <CR><Plug>AutoPairsReturn

" COC
set cmdheight=2                                 " Better display for messages
set updatetime=300                              " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c                                " don't give |ins-completion-menu| messages.
set signcolumn=yes                              " always show signcolumns
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')                   " Highlight symbol under cursor on CursorHold
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected') " Setup formatexpr specified filetype(s).
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')     " Update signature help on jump placeholder
augroup end
command! -nargs=0 Format :call CocAction('format')                             " Use `:Format` for format current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)                   " Use `:Fold` for fold current buffer
autocmd FileType json syntax match Comment +\/\/.\+$+                          " COC JSON - better comment rendering

" Defx
call defx#custom#column('filename', {
            \ 'directory_icon': '⯈',
            \ 'opened_icon': '⯆',
            \ })
" Git
let g:defx_git#indicators = {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ }
let g:defx_git#column_length = 1
let g:defx_git#show_ignored = 0
let g:defx_git#raw_mode = 0
" Icons
let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
let g:defx_icons_parent_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
" Options below are applicable only when using "tree" feature
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

" Denite
" Ignore files
call denite#custom#source('file/rec', 'matchers', ['matcher_fuzzy', 'matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '*~', '*.o', '*.exe', '*.bak',
  \ '.DS_Store', '*.pyc', '*.sw[po]', '*.class',
  \ '.hg/', '.git/', '.bzr/', '.svn/',
  \ 'node_modules/', 'bower_components/', 'tmp/', 'log/', 'vendor/ruby',
  \ '.idea/', 'dist/',
  \ '.png', '.jpg', '.jpeg', '.gif',
  \ 'build/',
  \ '__pycache__/', 'venv/',
  \ 'tags', 'tags-*'])
" Setup projects
call denite#custom#map(
    \ 'normal',
    \ 'a',
    \ '<denite:do_action:add>',
    \ 'noremap'
    \)

call denite#custom#map(
    \ 'normal',
    \ 'd',
    \ '<denite:do_action:delete>',
    \ 'noremap'
    \)

call denite#custom#map(
    \ 'normal',
    \ 'r',
    \ '<denite:do_action:reset>',
    \ 'noremap'
    \)
" Search methods
" First things first, I want to use ag to search through my project files. Coming from fzf,
" I like to have two bindings for this -- one that respects my projects .gitignore and one that does not.
" The latter is helpful if I want to examine a built file or look at a node_module dependency while working on my js project.
" -u flag to unrestrict (see ag docs)
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-u', '-g', ''])
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', ''])
" Search into files
call denite#custom#source('grep', 'matchers', ['matcher_regexp'])
" use ag for content search
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Git
" Useful git help
" Instead of reverting the cursor to the last position in the buffer, we set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Grammalecte
let g:grammalecte_cli_py='/opt/grammalecte/pythonpath/grammalecte-cli.py'

" Indent Guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Neosnippet
let g:neosnippet#enable_completed_snippet = 1

" NERDCommenter
let g:NERDSpaceDelims = 1       " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1       " Use compact syntax for prettified multi-line comments

" Numbers.vim
let g:enable_numbers = 1
let g:numbers_exclude = ['unite', 'startify', 'w3m', 'vimshell', 'tagbar', 'gundo', 'minibufexpl', 'nerdtree']
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=1
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" vim-table-mode
let g:table_mode_corner='|'     " Compatibility with markdown

" tern_for_vim
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:tern#tern_show_argument_hints = 'on_hold'
let g:tern#tern_show_signature_in_pum = 1

" Undo tree
let g:undotree_SetFocusWhenToggle=1

" VimTex
let g:vimtex_view_method = 'zathura'        " View software

" Vue
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1

