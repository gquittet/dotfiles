nnoremap <silent> <leader> :<C-u>WhichKey '<space>'<CR>
vnoremap <silent> <leader> :<C-u>WhichKey '<space>'<CR>
call which_key#register('<space>', "g:which_key_map_leader")
nnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
vnoremap <silent> <localleader> :<C-u>WhichKey ','<CR>
call which_key#register(',', "g:which_key_map_localleader")
nnoremap <silent> g :<C-u>WhichKey 'g'<CR>
vnoremap <silent> g :<C-u>WhichKey 'g'<CR>
call which_key#register('g', "g:which_key_map_key_g")
nnoremap <silent> <ESC> <ESC>
vnoremap <silent> <ESC> <ESC>

" Define prefix dictionary
let g:which_key_map_leader =  {}
let g:which_key_map_localleader =  {}

let g:which_key_map_leader._ = { 'name': 'underscore' }
let g:which_key_map_leader._.c = 'change'
let g:which_key_map_leader._.d = 'cut'
let g:which_key_map_leader._.dd = 'cut-line'
let g:which_key_map_leader._.D = 'cut-from-cursor'
let g:which_key_map_leader._.x = 'delete'
let g:which_key_map_leader.y = 'yank-to-clipboard'

let g:which_key_map_leader.m = { 'name' : '+major' }

let g:which_key_map_leader.b = {
      \ 'name' : '+buffer' ,
      \ 'D' : 'delete-force',
      \ 'd' : 'delete',
      \ 'f' : 'first',
      \ 'l' : 'last',
      \ 'n' : 'next',
      \ 'p' : 'previous',
      \ }

let g:which_key_map_leader.c = {
      \ 'name' : '+coc' ,
      \ 'c' : 'commands',
      \ 'n' : 'next',
      \ 'p' : 'previous',
      \ 'r' : 'resume',
      \ }

let g:which_key_map_leader.d = {
      \ 'name' : '+debugger' ,
      \ 'b': {
            \ 'name': '+breakpoint',
            \ 'c': 'conditional',
            \ 't': 'toggle',
            \ },
      \ 'c' : 'continue',
      \ 'd' : 'debug',
      \ 'i' : 'inspect',
      \ 'j': 'step-over',
      \ 'k': 'step-out',
      \ 'l': 'step-into',
      \ 'q': 'quit',
      \ 'r' : 'run-to-cursor',
      \ 'w': {
            \ 'name': '+window',
            \ 'c': 'code',
            \ 'o': 'output',
            \ 's': 'stack-traces',
            \ 't': 'tag-page',
            \ 'v': 'variables',
            \ 'w': 'watches',
            \ },
      \ 'x': 'restart',
      \ }

let g:which_key_map_leader.f = {
      \ 'name' : '+files' ,
      \ 'S' : 'save-force',
      \ 'W' : 'save-force-without-format',
      \ 'f' : 'fuzzy-finder',
      \ 'g' : 'git-files',
      \ 's' : 'save',
      \ 'w' : 'save-without-formatting',
      \ }

let g:which_key_map_leader.g = {
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
          \ 'v': 'diff-split',
          \ 'a': 'get-left',
          \ ';': 'get-right'
          \ },
      \ 'h' : {
          \ 'name': '+hunk',
          \ 'K': 'commit',
          \ 'i': 'info',
          \ 'n': 'next',
          \ 'p': 'previous',
          \ 'u': 'undo',
          \ },
      \ 'l' : 'log',
      \ 'm' : 'line-commit',
      \ 'P' : 'push',
      \ 'p' : 'pull',
      \ 'r' : 'read',
      \ 'w' : 'write',
      \ 'W' : 'write-force',
      \ 'e' : 'edit',
      \ 'u' : {
          \ 'name': '+urls',
          \ 'o': 'open',
          \ 'y': 'yank'
          \ }
      \ }

let g:which_key_map_leader.l = {
      \ 'name' : '+list' ,
      \ 'B' : 'buffer',
      \ 'L' : 'location',
      \ 'c' : 'commit',
      \ 'd' : 'diagnostics',
      \ 'e' : 'extensions',
      \ 'ft' : 'filetypes',
      \ 'l' : 'lines',
      \ 'o' : 'outline',
      \ 'r' : 'recent',
      \ 's' : 'symbols',
      \ 't' : 'tags',
      \ 'y' : 'yank',
      \ 'b' : {
          \ 'name': '+buffer',
          \ 'c': 'commit',
          \ 'd' : 'diagnostics',
          \ 'l': 'list',
          \ 'w': 'words'
          \ },
      \ }

let g:which_key_map_leader.r = {
      \ 'name' : '+refactor' ,
      \ 'a' : 'run-code-action',
      \ 'f' : 'fix',
      \ 'i' : {
            \ 'name' : '+indent' ,
            \ '"' : '"',
            \ '&' : '&',
            \ ',' : ',',
            \ ',,' : ',,',
            \ '-' : '-',
            \ '/' : '/',
            \ ':' : ':',
            \ '::' : '::',
            \ '=' : '=',
            \ '=>' : '=>',
            \ '\\' : '\\',
          \},
      \ 'n' : 'rename',
      \ 's' : {
            \ 'name': '+sort',
            \ 'j': 'json',
      \ },
      \ 'w' : 'clean-whitespace',
      \ 'w ' : 'clean-whitespace',
      \ }

let g:which_key_map_leader.S = {
      \ 'name' : '+settings' ,
      \ 'c' : 'colors',
      \ 'r' : 'reload',
      \ }

let g:which_key_map_leader.s = {
      \ 'name' : '+search' ,
      \ 'w' : 'words',
      \ }

let g:which_key_map_leader.T = {
      \ 'name' : '+tabs' ,
      \ 'D' : 'delete-force',
      \ 'c' : 'create',
      \ 'd' : 'delete',
      \ 'e' : 'edit',
      \ 'f' : 'first',
      \ 'l' : 'last',
      \ 'n' : 'next',
      \ 'o' : 'only',
      \ 'p' : 'previous',
      \ 'r' : 'rewind',
      \ }

let g:which_key_map_leader.t = {
      \ 'name' : '+toggle' ,
      \ 'c' : 'color',
      \ 'e' : 'explorer',
      \ 'i' : 'indent-guide',
      \ 'n' : 'line-number',
      \ 'o' : 'outline',
      \ 'r' : 'rainbow-mode',
      \ 'u' : 'undo-tree',
      \ 'g' : {
        \ 'name' : '+git',
        \ 'g' : 'gutters',
        \}
      \ }

let g:which_key_map_leader.w = {
      \ 'name' : '+window' ,
      \ '+' : 'increase-height',
      \ '-' : 'decrease-height',
      \ '<' : 'increase-width',
      \ '=' : 'equalize-size',
      \ '>' : 'decrease-width',
      \ 'H' : 'move-left',
      \ 'J' : 'move-down',
      \ 'K' : 'move-up',
      \ 'L' : 'move-right',
      \ 'Q' : 'force-quit',
      \ 'T' : 'move-new-tab',
      \ '_' : 'zoom-vertical',
      \ 'b' : 'bottom',
      \ 'c' : 'close',
      \ 'f' : 'open-cursor-path',
      \ 'h' : 'left',
      \ 'i' : 'open-current-file',
      \ 'j' : 'down',
      \ 'k' : 'up',
      \ 'l' : 'right',
      \ 'n' : 'new-file',
      \ 'o' : 'only',
      \ 'q' : 'quit',
      \ 'r' : 'rotate-right',
      \ 's' : 'split-horizontal',
      \ 't' : 'select-top',
      \ 'v' : 'split-vertical',
      \ 'w' : 'next-window',
      \ 'x' : 'rotate-left',
      \ 'z' : 'zoom',
      \ '|' : 'zoom-horizontal',
      \ }

let g:which_key_map_localleader.F = 'format'
let g:which_key_map_localleader.s = {
      \ 'name' : '+select' ,
      \ 'n' : 'next',
      \ 'p' : 'previous',
      \ }

let g:which_key_map_key_g = {
      \ 'name' : "+goto",
      \ '%' : 'matchit-bracket-backward',
      \ 'T' : 'tab-previous',
      \ 'c' : 'comment',
      \ 'd' : 'definition',
      \ 'f' : 'path',
      \ 'g' : 'top',
      \ 'i' : 'implementation',
      \ 'r' : 'references',
      \ 't' : 'tab-next',
      \ 'x' : 'which_key_ignore',
      \ 'y' : 'type-definition',
      \ }


" Ignore tComment leader shortcut
let g:which_key_map_leader._._     = 'which_key_ignore'
let g:which_key_map_leader._.a     = 'which_key_ignore'
let g:which_key_map_leader._.b     = 'which_key_ignore'
let g:which_key_map_leader._.n     = 'which_key_ignore'
let g:which_key_map_leader._.p     = 'which_key_ignore'
let g:which_key_map_leader._.r     = 'which_key_ignore'
let g:which_key_map_leader._.s     = 'which_key_ignore'
let g:which_key_map_leader._[' ']  = 'which_key_ignore'
let g:which_key_map_key_g['<']     = 'which_key_ignore'
let g:which_key_map_key_g['<C-N>'] = 'which_key_ignore'
let g:which_key_map_key_g['<M-n>'] = 'which_key_ignore'
let g:which_key_map_key_g['<b']    = 'which_key_ignore'
let g:which_key_map_key_g['>']     = 'which_key_ignore'
let g:which_key_map_key_g['>b']    = 'which_key_ignore'
let g:which_key_map_key_g['c3c']   = 'which_key_ignore'

" By default timeoutlen is 1000 ms
" 200ms is the minimum if you want vim fugitive working well
" Executes native commands if keymap is not defined.
" For example, you can use `:WhichKey 'g'` and get `gg` work correct:
let g:which_key_fallback_to_native_key = 1
" Use neovim floating window
let g:which_key_use_floating_win = 1
" Update mapping on the fly
let g:which_key_run_map_on_popup = 1
let g:which_key_exit = ["\<C-G>", "\<C-C>", "\<C-[>", "\<Esc>"]


