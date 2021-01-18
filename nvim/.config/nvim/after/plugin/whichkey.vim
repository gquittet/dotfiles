nnoremap <silent> <leader> :<C-u>WhichKey '<space>'<CR>
nnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
nnoremap <silent> <ESC> <ESC>

" Define prefix dictionary
let g:which_key_map_leader =  {}
let g:which_key_map_localleader =  {}

let g:which_key_map_leader.m = { 'name' : '+major' }

let g:which_key_map_leader.c = {
      \ 'name' : '+coc' ,
      \ 'c' : 'commands',
      \ 'j' : 'previous',
      \ 'k' : 'next',
      \ 'p' : 'resume',
      \ '' : 'save-force-without-format'
      \ }

let g:which_key_map_leader.f = {
      \ 'name' : '+files' ,
      \ 'f' : 'fuzzy-finder',
      \ 'g' : 'git-files',
      \ 's' : 'save',
      \ 'S' : 'save-force',
      \ 'w' : 'save-without-formatting',
      \ 'W' : 'save-force-without-format',
      \ }

let which_key_map_leader.g = {
      \ 'name' : '+git',
      \ 's' : 'status',
      \ 'a' : {
          \ 'name': '+add',
          \ '.': '.',
          \ 'a': '-A'
          \ },
      \ 'b' : 'branches',
      \ 'bl' :'blame',
      \ 'c' : 'commit',
      \ 'd' : {
          \ 'name': '+diff',
          \ 'd': 'diff',
          \ 'v': 'diff-split'
          \ },
      \ 'h' : {
          \ 'name': '+hunk',
          \ 'i': 'info',
          \ 'j': 'previous',
          \ 'k': 'next',
          \ 'K': 'commit',
          \ },
      \ 'l' : 'log',
      \ 'm' : 'line-commit',
      \ 'P' : 'push',
      \ 'p' : 'pull',
      \ 'r' : 'read',
      \ 'w' : 'write',
      \ 'e' : 'edit',
      \ 'u' : {
          \ 'name': '+urls',
          \ 'o': 'open',
          \ 'y': 'yank'
          \ }
      \ }

let g:which_key_map_leader.l = {
      \ 'name' : '+list' ,
      \ 'c' : 'commit',
      \ 'd' : 'diagnostics',
      \ 'e' : 'extensions',
      \ 't' : 'tags',
      \ 'B' : 'buffer',
      \ 'b' : {
          \ 'name': '+buffer',
          \ 'c': 'commit',
          \ 'd' : 'diagnostics',
          \ 'l': 'list',
          \ 'w': 'words'
          \ },
      \ 'l' : 'lines',
      \ 'L' : 'location',
      \ 'o' : 'outline',
      \ 'r' : 'recent',
      \ 's' : 'symbols',
      \ 'y' : 'yank',
      \ }

let g:which_key_map_leader.t = {
      \ 'name' : '+toggle' ,
      \ 'c' : 'color',
      \ 'e' : 'explorer',
      \ 'i' : 'indent-guide',
      \ 'n' : 'line-number',
      \ 'r' : 'rainbow-mode',
      \ 'o' : 'outline',
      \ 'u' : 'undo-tree',
      \ }

let g:which_key_map_leader.r = {
      \ 'name' : '+refactoring' ,
      \ 'i' : {
            \ 'name' : '+indent' ,
            \ '&' : '&',
            \ '-' : '-',
            \ '=' : '=',
            \ '=>' : '=>',
            \ ':' : ':',
            \ '::' : '::',
            \ ',' : ',',
            \ ',,' : ',,',
            \ '/' : '/',
            \ '\\' : '\\',
            \ '"' : '"',
          \},
      \ 'n' : 'rename',
      \ }

let g:which_key_map_leader.S = {
      \ 'name' : '+settings' ,
      \ 'r' : 'reload',
      \ 'c' : 'colors',
      \ }

let g:which_key_map_leader.s = {
      \ 'name' : '+search' ,
      \ 'w' : 'words',
      \ }

let g:which_key_map_leader.x = 'delete'
let g:which_key_map_leader.y = 'yank-to-clipboard'

let g:which_key_map_localleader.F = 'format'
let g:which_key_map_localleader.s = {
      \ 'name' : '+select' ,
      \ 'n' : 'next',
      \ 'p' : 'previous',
      \ }


" By default timeoutlen is 1000 ms
set timeoutlen=100

" Hide status bar when which key is showing
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

au! User vim-which-key call which_key#register(',', "g:which_key_map_localleader")
au! User vim-which-key call which_key#register('<space>', "g:which_key_map_leader")

