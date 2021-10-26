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
nmap <silent> <leader>bD :<C-u>bdelete!<CR>
nmap <silent> <leader>bd :<C-u>bdelete<CR>
nmap <silent> <leader>bf :<C-u>bfirst<CR>
nmap <silent> <leader>bl :<C-u>blast<CR>
nmap <silent> <leader>bn :<C-u>bnext<CR>
nmap <silent> <leader>bp :<C-u>bprevious<CR>

" Tabs
nmap <silent> <leader>TD :<C-u>tabclose!<CR>
nmap <silent> <leader>Tc :<C-u>tabnew<CR>
nmap <silent> <leader>Td :<C-u>tabclose<CR>
nmap <silent> <leader>Te :<C-u>tabedit<CR>
nmap <silent> <leader>Tf :<C-u>tabfirst<CR>
nmap <silent> <leader>Tl :<C-u>tablast<CR>
nmap <silent> <leader>Tn :<C-u>tabnext<CR>
nmap <silent> <leader>To :<C-u>tabonly<CR>
nmap <silent> <leader>Tp :<C-u>tabprevious<CR>
nmap <silent> <leader>Tr :<C-u>tabrewind<CR>

" Window
nmap <leader>wq <C-w>q
nmap <leader>wQ :<C-u>q!<CR>
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
nmap <leader>fs :<C-u>w<CR>
nmap <leader>fS :<C-u>w!<CR>
nmap <leader>fw :<C-u>noa w<CR>
nmap <leader>fW :<C-u>noa w!<CR>

" Git
nmap <silent> <leader>gs :<C-u>Git<CR>
nmap <silent> <leader>ga. :<C-u>Git add .<CR>
nmap <silent> <leader>gaa :<C-u>Git add -A<CR>
nmap <silent> <leader>gb :<C-u>GBranches<CR>
nmap <silent> <leader>gbl :<C-u>Git blame<CR>
nmap <silent> <leader>gc :<C-u>Git commit<CR>
nmap <silent> <leader>gdd :<C-u>Gdiff<CR>
nmap <silent> <leader>gdv :<C-u>Gvdiffsplit!<CR>
nmap <silent> <leader>gda :<C-u>diffget //2<CR>
nmap <silent> <leader>gd; :<C-u>diffget //3<CR>
nmap <silent> <leader>gl :<C-u>Gclog<CR>
nmap <silent> <leader>gP :<C-u>Git push<CR>
nmap <silent> <leader>gPf :<C-u>Git push --force<CR>
nmap <silent> <leader>gp :<C-u>Git pull<CR>
nmap <silent> <leader>gr :<C-u>Gread<CR>
nmap <silent> <leader>gw :<C-u>Gwrite<CR>
nmap <silent> <leader>gW :<C-u>Gwrite!<CR>
nmap <silent> <leader>ge :<C-u>Gedit<CR>

" Highlight
map <silent> <leader>nh :<C-u>nohl <bar> :let @/ = "" <bar> echo ':nohl'<CR>


" Toggle
nmap <silent> <leader>tc <cmd>let &background = ( &background == "dark"? "light" : "dark" )<cr>
nmap <silent> <leader>te <cmd>CocCommand explorer<cr>
nmap <silent> <leader>tu <cmd>UndotreeToggle<cr>

" Settings
" Reload settings
nnoremap <silent> <leader>Sr :<C-u>source ~/.config/nvim/init.vim <bar> :call webdevicons#refresh() <bar> :echo "Settings refreshed!"<CR>

" Tabular
nmap <silent> <leader>ri& :<C-u>Tabularize /&<CR>
vmap <silent> <leader>ri& :<C-u>Tabularize /&<CR>
nmap <silent> <leader>ri- :<C-u>Tabularize /-<CR>
vmap <silent> <leader>ri- :<C-u>Tabularize /-<CR>
nmap <silent> <leader>ri= :<C-u>Tabularize /=<CR>
vmap <silent> <leader>ri= :<C-u>Tabularize /=<CR>
nmap <silent> <leader>ri=> :<C-u>Tabularize /=><CR>
vmap <silent> <leader>ri=> :<C-u>Tabularize /=><CR>
nmap <silent> <leader>ri: :<C-u>Tabularize /:<CR>
vmap <silent> <leader>ri: :<C-u>Tabularize /:<CR>
nmap <silent> <leader>ri:: :<C-u>Tabularize /:\zs<CR>
vmap <silent> <leader>ri:: :<C-u>Tabularize /:\zs<CR>
nmap <silent> <leader>ri, :<C-u>Tabularize /,<CR>
vmap <silent> <leader>ri, :<C-u>Tabularize /,<CR>
nmap <silent> <leader>ri,, :<C-u>Tabularize /,\zs<CR>
vmap <silent> <leader>ri,, :<C-u>Tabularize /,\zs<CR>
nmap <silent> <leader>ri<bar> :<C-u>Tabularize /<bar><CR>
vmap <silent> <leader>ri<bar> :<C-u>Tabularize /<bar><CR>
nmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
vmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
nmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>
vmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>

