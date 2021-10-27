let mapleader = "\<space>"
let maplocalleader = "\\"

" Disable
" Arrow keys
" noremap <Up> <Nop>
" noremap <Right> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" inoremap <Up> <Nop>
" inoremap <Right> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" Disable Help
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


" Disable backspace
"noremap <BS> <Nop>
"inoremap <BS> <Nop>
"noremap <Del> <Nop>
"inoremap <Del> <Nop>

" Navigation
map <silent> gg gg
map <silent> gf gf
map <silent> gt gt
map <silent> gT gT

" Insert mode mapping
imap <C-a> <C-o>0
imap <C-e> <C-o>$

" Cursor in the middle of the screen
nnoremap # #zz
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz
nnoremap J Jzz

" Undo breakpoints (to avoid to delete all changes)
inoremap <C-u> <C-o>u
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap :: ::C-g>u
inoremap ( (<C-g>u
inoremap ? ?<C-g>u
inoremap ! !<C-g>u


" Moving text
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <silent> <leader>_c "_c
nnoremap <silent> <leader>_d "_d
nnoremap <silent> <leader>_dd "_dd
nnoremap <silent> <leader>_D "_D
nnoremap <silent> <leader>_x "_x

vnoremap <silent> <leader>_c "_c
vnoremap <silent> <leader>_d "_d
vnoremap <silent> <leader>_x "_x

nnoremap <silent> <leader>y "+y
vnoremap <silent> <leader>y "+y


" Shortcuts
nmap <silent> <space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" Buffer
nmap <silent> <leader>bD <cmd>bdelete!<cr>
nmap <silent> <leader>bd <cmd>bdelete<cr>
nmap <silent> <leader>bf <cmd>bfirst<cr>
nmap <silent> <leader>bl <cmd>blast<cr>
nmap <silent> <leader>bn <cmd>bnext<cr>
nmap <silent> <leader>bp <cmd>bprevious<cr>

" Tabs
nmap <silent> <leader>TD <cmd>tabclose!<cr>
nmap <silent> <leader>Tc <cmd>tabnew<cr>
nmap <silent> <leader>Td <cmd>tabclose<cr>
nmap <silent> <leader>Te <cmd>tabedit<cr>
nmap <silent> <leader>Tf <cmd>tabfirst<cr>
nmap <silent> <leader>Tl <cmd>tablast<cr>
nmap <silent> <leader>Tn <cmd>tabnext<cr>
nmap <silent> <leader>To <cmd>tabonly<cr>
nmap <silent> <leader>Tp <cmd>tabprevious<cr>
nmap <silent> <leader>Tr <cmd>tabrewind<cr>

" Window
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
nmap <leader>wo <cmd>MaximizerToggle<cr>
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

" Doge (documentation)
let g:doge_enable_mappings=0
let g:doge_mapping='<leader>rd'

" File
nmap <leader>fs <cmd>w<cr>
nmap <leader>fS <cmd>w!<cr>
nmap <leader>fw <cmd>noa w<cr>
nmap <leader>fW <cmd>noa w!<cr>

" Git
nmap <silent> <leader>gs <cmd>Git<cr>
nmap <silent> <leader>ga. <cmd>Git add .<cr>
nmap <silent> <leader>gaa <cmd>Git add -A<cr>
nmap <silent> <leader>gb <cmd>GBranches<cr>
nmap <silent> <leader>gbl <cmd>Git blame<cr>
nmap <silent> <leader>gc <cmd>Git commit<cr>
nmap <silent> <leader>gdd <cmd>Gdiff<cr>
nmap <silent> <leader>gdv <cmd>Gvdiffsplit!<cr>
nmap <silent> <leader>gda <cmd>diffget //2<cr><cmd>diffput //3<cr>
nmap <silent> <leader>gd; <cmd>diffget //3<cr><cmd>diffput //2<cr>
nmap <silent> <leader>gl <cmd>Gclog<cr>
nmap <silent> <leader>gP <cmd>Git push<cr>
nmap <silent> <leader>gPf <cmd>Git push --force<cr>
nmap <silent> <leader>gp <cmd>Git pull<cr>
nmap <silent> <leader>gr <cmd>Gread<cr>
nmap <silent> <leader>gw <cmd>Gwrite<cr>
nmap <silent> <leader>gW <cmd>Gwrite!<cr>
nmap <silent> <leader>ge <cmd>Gedit<cr>

" Highlight
map <silent> <leader>nh <cmd>nohl <bar> :let @/ = "" <bar> echo ':nohl'<cr>


" Toggle
nmap <silent> <leader>tc <cmd>let &background = ( &background == "dark"? "light" : "dark" )<cr>
nmap <silent> <leader>te <cmd>CocCommand explorer<cr>
nmap <silent> <leader>tu <cmd>UndotreeToggle<cr>

" Settings
" Reload settings
nnoremap <silent> <leader>Sr <cmd>source ~/.config/nvim/init.vim <bar> :call webdevicons#refresh() <bar> :echo "Settings refreshed!"<cr>

" Tabular
nmap <silent> <leader>ri& <cmd>Tabularize /&<cr>
vmap <silent> <leader>ri& <cmd>Tabularize /&<cr>
nmap <silent> <leader>ri- <cmd>Tabularize /-<cr>
vmap <silent> <leader>ri- <cmd>Tabularize /-<cr>
nmap <silent> <leader>ri= <cmd>Tabularize /=<cr>
vmap <silent> <leader>ri= <cmd>Tabularize /=<cr>
nmap <silent> <leader>ri=> <cmd>Tabularize /=><cr>
vmap <silent> <leader>ri=> <cmd>Tabularize /=><cr>
nmap <silent> <leader>ri: <cmd>Tabularize /:<cr>
vmap <silent> <leader>ri: <cmd>Tabularize /:<cr>
nmap <silent> <leader>ri:: <cmd>Tabularize /:\zs<cr>
vmap <silent> <leader>ri:: <cmd>Tabularize /:\zs<cr>
nmap <silent> <leader>ri, <cmd>Tabularize /,<cr>
vmap <silent> <leader>ri, <cmd>Tabularize /,<cr>
nmap <silent> <leader>ri,, <cmd>Tabularize /,\zs<cr>
vmap <silent> <leader>ri,, <cmd>Tabularize /,\zs<cr>
nmap <silent> <leader>ri<bar> <cmd>Tabularize /<bar><cr>
vmap <silent> <leader>ri<bar> <cmd>Tabularize /<bar><cr>
nmap <silent> <leader>ri\ <cmd>Tabularize /\\<cr>
vmap <silent> <leader>ri\ <cmd>Tabularize /\\<cr>
nmap <silent> <leader>ri" <cmd>Tabularize /"<cr>
vmap <silent> <leader>ri" <cmd>Tabularize /"<cr>

