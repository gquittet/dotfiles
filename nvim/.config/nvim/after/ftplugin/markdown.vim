setlocal foldmethod=expr
setlocal textwidth=80
setlocal colorcolumn=81
setlocal wrapmargin=0

nmap <buffer> <silent> <leader>mp :<C-u>MarkdownPreview<CR>
nmap <buffer> <silent> <leader>mk :<C-u>MarkdownPreviewStop<CR>

autocmd BufEnter *.md let g:which_key_map_leader.m = {
      \ 'name' : '+major' ,
      \ 'p' : 'preview',
      \ 'k' : 'stop',
      \ }
autocmd BufLeave *.md let g:which_key_map_leader.m = { 'name' : '+major' }
