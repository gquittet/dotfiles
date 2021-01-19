let mapleader = "\<space>"
let maplocalleader = ","

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


" Disable backspace
"noremap <BS> <Nop>
"inoremap <BS> <Nop>
"noremap <Del> <Nop>
"inoremap <Del> <Nop>

nnoremap <silent> <leader>c "_c
nnoremap <silent> <leader>d "_d
nnoremap <silent> <leader>dd "_dd
nnoremap <silent> <leader>D "_D
nnoremap <silent> <leader>x "_x

vnoremap <silent> <leader>c "_c
vnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>x "_x

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
nmap <silent> <leader>tD :<C-u>tabclose!<CR>
nmap <silent> <leader>tc :<C-u>tabnew<CR>
nmap <silent> <leader>td :<C-u>tabclose<CR>
nmap <silent> <leader>te :<C-u>tabedit<CR>
nmap <silent> <leader>tf :<C-u>tabfirst<CR>
nmap <silent> <leader>tl :<C-u>tablast<CR>
nmap <silent> <leader>tn :<C-u>tabnext<CR>
nmap <silent> <leader>to :<C-u>tabonly<CR>
nmap <silent> <leader>tp :<C-u>tabprevious<CR>
nmap <silent> <leader>tr :<C-u>tabrewind<CR>

" Window
nmap <leader>wq <C-w>q
nmap <leader>wQ :<C-u>q!<CR>
nmap <leader>wh <C-w>h
nmap <leader>wj <C-w>j
nmap <leader>wk <C-w>k
nmap <leader>wl <C-w>l
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
nmap <leader>w+ <C-w>+
nmap <leader>w- <C-w>-
nmap <leader>w= <C-w>=
nmap <leader>w<Bar> <C-w><Bar>
nmap <leader>w_ <C-w>_

" File
nmap <leader>fs :<C-u>w<CR>
nmap <leader>fS :<C-u>w!<CR>
nmap <leader>fw :<C-u>noa w<CR>
nmap <leader>fW :<C-u>noa w!<CR>
nnoremap <leader>ff :<C-u>Files!<CR>
nnoremap <leader>fg :<C-u>GFiles!<CR>

" Git
nmap <leader>gs :<C-u>Gstatus<CR>
nmap <leader>ga. :<C-u>Git add .<CR>
nmap <leader>gaa :<C-u>Git add -A<CR>
nmap <leader>gb :<C-u>GBranches<CR>
nmap <leader>gbl :<C-u>Gblame<CR>
nmap <leader>gc :<C-u>Gcommit<CR>
nmap <leader>gdd :<C-u>Gdiff<CR>
nmap <leader>gdv :<C-u>Gvdiffsplit!<CR>
nmap <leader>gl :<C-u>Glog<CR>
nmap <leader>gP :<C-u>Gpush<CR>
nmap <leader>gp :<C-u>Gpull<CR>
nmap <leader>gr :<C-u>Gread<CR>
nmap <leader>gw :<C-u>Gwrite<CR>
nmap <leader>ge :<C-u>Gedit<CR>

" Highlight
map <silent> <leader>nh :<C-u>nohl <bar> :let @/ = ""<CR>

" Toggle
nmap <silent> <leader>Tc :<C-u>let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <leader>Te :<C-u>CocCommand explorer<CR>
nmap <silent> <leader>Ti :<C-u>IndentGuidesToggle<CR>
nmap <silent> <leader>Tn :<C-u>NumbersOnOff<CR>
nmap <silent> <leader>Tr :<C-u>RainbowToggle<CR>
nmap <silent> <leader>To :<C-u>Vista!!<CR>
nmap <silent> <leader>Tu :<C-u>UndotreeToggle<CR>

" Settings
" Reload settings
nnoremap <leader>Sr :<C-u>source ~/.config/nvim/init.vim <bar> :call webdevicons#refresh()<CR>

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
nmap <silent> <leader>ri<Bar> :<C-u>Tabularize /<Bar><CR>
vmap <silent> <leader>ri<Bar> :<C-u>Tabularize /<Bar><CR>
nmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
vmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
nmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>
vmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>

