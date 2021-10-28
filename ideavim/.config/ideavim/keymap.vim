let mapleader = " "

" {{{ Disable Help
nmap <F1> <Nop>
imap <F1> <Nop>
xmap <F1> <Nop>
vmap <F1> <Nop>
nmap <F1> <Nop>
imap <F1> <Nop>
xmap <F1> <Nop>
vmap <F1> <Nop>
nmap <M-F1> <Nop>
imap <M-F1> <Nop>
xmap <M-F1> <Nop>
vmap <M-F1> <Nop>
nmap <M-F1> <Nop>
imap <M-F1> <Nop>
xmap <M-F1> <Nop>
vmap <M-F1> <Nop>
" }}}

" {{{ File
nmap <leader>ff <Action>(GotoFile)
nmap <leader>fs <Action>(SaveDocument)
nmap <leader>fS :<C-u>w!<cr>
nmap <leader>fw :<C-u>noa w<cr>
nmap <leader>fW :<C-u>noa w!<cr>
" }}}

" {{{ Refactoring
nmap <leader>rn <Action>(RenameElement)
" }}}

nnoremap <silent> <leader>Sr :<C-u>source ~/.config/ideavim/ideavimrc <bar> :echo "Settings refreshed!"<cr>


" {{{ Toggle
nmap <silent> <leader>te :<C-u>NERDTreeToggle<cr>
" }}}

" {{{ Window
nmap <leader>wq <C-w>q
nmap <leader>wQ <cmd>q!<cr>
" Focus window
nmap <leader>wh <C-w>h
nmap <leader>wj <C-w>j
nmap <leader>wk <C-w>k
nmap <leader>wl <C-w>l
" Move window
nmap <leader>wH <C-w>H
nmap <leader>wJ <C-w>J
nmap <leader>wK <C-w>K
nmap <leader>wL <C-w>L
" Select bottom window
nmap <leader>wb <C-w>b
" Close window
nmap <leader>wc <C-w>c
" Open file path under cursor in new split
nmap <leader>wf <C-w>f
" Open current file in new split
nmap <leader>wi <C-w>i
" Open new empty window in new split
nmap <leader>wn <C-w>n
" Fullscreen current window
nmap <leader>wo <C-w>o
" Swap windows and move the cursor
nmap <leader>wr <C-w>r
" Split horizontally window
nmap <leader>ws <C-w>s
" Select top window
nmap <leader>wt <C-w>t
" Split vertical
nmap <leader>wv <C-w>v
" Select next window
nmap <leader>ww <C-w>w
" Swap windows
nmap <leader>wx <C-w>x
" Move window to a new tab
nmap <leader>wT <C-w>T
" Change height
nmap <leader>w+ <C-w>+
nmap <leader>w- <C-w>-
" Change width
nmap <leader>w< <C-w><
nmap <leader>w> <C-w>>
nmap <leader>w= <C-w>=
nmap <leader>w<bar> <C-w><bar>
nmap <leader>w_ <C-w>_
nmap <leader>wz <C-w><bar><C-w>_
" }}}
