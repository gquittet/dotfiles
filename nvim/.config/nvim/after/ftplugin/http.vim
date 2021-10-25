nmap <buffer> <silent> <leader>mr :<C-u>Http<CR>
nmap <buffer> <silent> <leader>ma :<C-u>HttpAuth<CR>
nmap <buffer> <silent> <leader>mc :<C-u>HttpClean<CR>
nmap <buffer> <silent> <leader>msc :<C-u>HttpShowCurl<CR>
nmap <buffer> <silent> <leader>msr :<C-u>HttpShowRequest<CR>

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
