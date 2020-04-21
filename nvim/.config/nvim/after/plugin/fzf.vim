let $FZF_DEFAULT_OPTS = '--layout=reverse'

" Ignore files that are in .gitignore
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

" find project files
nnoremap <leader>ff :Files!<CR>
nnoremap <leader>fg :GFiles!<CR>

" find project files by lines of code
nnoremap <leader>fl :Lines!<CR>
nnoremap <leader>fbl :BLines!<CR>

" find commit
nnoremap <leader>fc :Commit!<CR>
nnoremap <leader>fbc :BCommit!<CR>

" List
nnoremap <leader>lb :Buffers!<CR>
nnoremap <leader>lc :Colors!<CR>

" MRU
nnoremap <leader>lr :History!<CR>

" search in project
"nnoremap <leader>fp :Ag<CR>
"start a search query by pressing \
nnoremap \  :Rg<space>
"search for word under cursor by pressing |
nnoremap \| :Rg <C-R><C-W><CR>:cw<CR>


" Options
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
