let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

" Ignore files that are in .gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --no-ignore-vcs --follow --glob "!{.git,node_modules,build,dist,.idea,.cache}"'

" find project files
nnoremap <localleader>ff :<C-u>Files!<CR>
nnoremap <localleader>fg :<C-u>GFiles!<CR>

" find project files by lines of code
nnoremap <localleader>fl :<C-u>Lines!<CR>
nnoremap <localleader>ll :<C-u>BLines!<CR>

" find commit
nnoremap <localleader>lc :<C-u>BCommit!<CR>
nnoremap <localleader>gc :<C-u>Commit!<CR>

" find tags
nnoremap <localleader>gt :<C-u>Tags!<CR>
nnoremap <localleader>lt :<C-u>BTags!<CR>

" List
nnoremap <localleader>lb :<C-u>Buffers!<CR>
nnoremap <localleader>lC :<C-u>Colors!<CR>

" MRU
nnoremap <localleader>lr :<C-u>History!<CR>

" search in project
"nnoremap <leader>fp :<C-u>Ag<CR>
"start a search query by pressing \
" nnoremap <Bslash> :<C-u>Rg!<space>
"search for word under cursor by pressing |
" nnoremap <Bar> :<C-u>Rg! <C-R><C-W><CR>


" Options
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


" Set colors to match with the current colorscheme
let g:fzf_colors = {
  \ 'fg':           ['fg', 'Normal'],
  \ 'bg':           ['bg', 'Normal'],
  \ 'hl':           ['fg', 'Comment'],
  \ 'fg+':          ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':          ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':          ['fg', 'Statement'],
  \ 'info':         ['fg', 'PreProc'],
  \ 'border':       ['fg', 'Ignore'],
  \ 'prompt':       ['fg', 'Conditional'],
  \ 'pointer':      ['fg', 'Exception'],
  \ 'marker':       ['fg', 'Keyword'],
  \ 'spinner':      ['fg', 'Label'],
  \ 'header':       ['fg', 'Comment']
  \ }
