nmap <buffer> <silent> <leader>mr <cmd>Http<cr>
nmap <buffer> <silent> <leader>ma <cmd>HttpAuth<cr>
nmap <buffer> <silent> <leader>mc <cmd>HttpClean<cr>
nmap <buffer> <silent> <leader>msc <cmd>HttpShowCurl<cr>
nmap <buffer> <silent> <leader>msr <cmd>HttpShowRequest<cr>

" Response buffers will overwrite each other instead of persisting forever
let g:vim_http_tempbuffer = 1

autocmd BufEnter *.md let g:which_key_map_leader.m = {
      \ 'name' : '+major' ,
      \ 'r' : 'run',
      \ 'c' : 'clean',
      \ 'a' : 'auth',
      \ 's' : {
            \ 'name' : '+show',
            \ 'c' : 'curl',
            \ 'r' : 'request'
            \}
      \ } | au! User vim-which-key call which_key#register('<space>', "g:which_key_map_leader")
autocmd BufLeave *.http let g:which_key_map_leader.m = { 'name' : '+major' }
