let mapleader = ","
let maplocalleader = ","

" Disable
" Arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
" Help
map <F1> <Nop>


" Disable backspace
"noremap <BS> <Nop>
"inoremap <BS> <Nop>
"noremap <Del> <Nop>
"inoremap <Del> <Nop>

nnoremap <space>c "_c
nnoremap <space>d "_d
nnoremap <space>dd "_dd
nnoremap <space>D "_D
nnoremap <space>x "_x

vnoremap <space>c "_c
vnoremap <space>d "_d
vnoremap <space>x "_x

nnoremap <space>y "+y
vnoremap <space>y "+y

" Background color
nmap <silent> <space>tbg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Shortcuts
nmap <silent> <space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" ALE
nmap <silent> [g <Plug>(ale_previous_wrap)
nmap <silent> ]g <Plug>(ale_next_wrap)

" Buffer
nnoremap <A-Right> :bnext<CR>
nnoremap <A-Left> :bprevious<CR>
nmap <space>bn :bnext<CR>
nmap <space>bp :bprevious<CR>
nmap <space>bf :bfirst<CR>
nmap <space>bl :blast<CR>
nmap <space>bd :bdelete<CR>
nmap <space>bD :bdelete!<CR>
nnoremap <space>blc :BCommit!<CR>
nnoremap <space>bt :BTags!<CR>
nnoremap <space>bll :BLines!<CR>

" Window
nmap <space>wq <C-w>q
nmap <space>wQ :q!<CR>
nmap <space>wh <C-w>h
nmap <space>wj <C-w>j
nmap <space>wk <C-w>k
nmap <space>wl <C-w>l
" Select bottom window
nmap <space>wb <C-w>b
" Close window
nmap <space>wc <C-w>c
" Open file path under cursor in new split
nmap <space>wf <C-w>f
" Open current file in new split
nmap <space>wi <C-w>i
" Open new empty window in new split
nmap <space>wn <C-w>n
" Fullscreen current window
nmap <space>wo <C-w>o
" Swap windows and move the cursor
nmap <space>wr <C-w>r
" Split horizontally window
nmap <space>ws <C-w>s
" Select top window
nmap <space>wt <C-w>t
" Split vertical
nmap <space>wv <C-w>v
" Select next window
nmap <space>ww <C-w>w
" Swap windows
nmap <space>wx <C-w>x
nmap <space>w+ <C-w>+
nmap <space>w- <C-w>-
nmap <space>w= <C-w>=
nmap <space>w<Bar> <C-w><Bar>
nmap <space>w_ <C-w>_

" File
nmap <space>fs :w<CR>
nmap <space>fS :w!<CR>
nnoremap <space>ff :Files!<CR>
nnoremap <space>fg :GFiles!<CR>

" List
nnoremap <space>ll :Lines!<CR>
nnoremap <space>lc :Commit!<CR>
nnoremap <space>pt :Tags!<CR>
nnoremap <space>lb :Buffers!<CR>
nnoremap <space>lC :Colors!<CR>
nnoremap <space>lh :History!<CR>

" Git
nmap <space>gs :Gstatus<CR>
nmap <space>ga :Git add -A<CR>
nmap <space>gbl :Gblame<CR>
nmap <space>gc :Gcommit<CR>
nmap <space>gd :Gdiff<CR>
nmap <space>gfc :Gvdiffsplit!<CR>
nmap <space>gl :Glog<CR>
nmap <space>gP :Gpush<CR>
nmap <space>gp :Gpull<CR>
nmap <space>gr :Gread<CR>
nmap <space>gw :Gwrite<CR>
nmap <space>ge :Gedit<CR>

" Highlight
map <silent> <space>nh :nohl <bar> :let @/ = ""<CR>

" Toggle
map <space>te :NERDTreeToggle<CR>
nmap <F3> :NumbersToggle<CR>
nmap <space>tr :RainbowToggle<CR>
nmap <space>to :Vista!!<CR>
nmap <space>tu :UndotreeToggle<CR>

" Numbers.vim
nmap <F4> :NumbersOnOff<CR>

" Settings
" Reload settings
nnoremap <space>ss :source ~/.config/nvim/init.vim <bar> :call webdevicons#refresh()<CR>

" Tabular
nmap <space>xi& :Tabularize /&<CR>
vmap <space>xi& :Tabularize /&<CR>
nmap <space>xi- :Tabularize /-<CR>
vmap <space>xi- :Tabularize /-<CR>
nmap <space>xi= :Tabularize /=<CR>
vmap <space>xi= :Tabularize /=<CR>
nmap <space>xi=> :Tabularize /=><CR>
vmap <space>xi=> :Tabularize /=><CR>
nmap <space>xi: :Tabularize /:<CR>
vmap <space>xi: :Tabularize /:<CR>
nmap <space>xi:: :Tabularize /:\zs<CR>
vmap <space>xi:: :Tabularize /:\zs<CR>
nmap <space>xi, :Tabularize /,<CR>
vmap <space>xi, :Tabularize /,<CR>
nmap <space>xi,, :Tabularize /,\zs<CR>
vmap <space>xi,, :Tabularize /,\zs<CR>
nmap <space>xi<Bar> :Tabularize /<Bar><CR>
vmap <space>xi<Bar> :Tabularize /<Bar><CR>
nmap <space>xi\ :Tabularize /\\<CR>
vmap <space>xi\ :Tabularize /\\<CR>
nmap <space>xi" :Tabularize /"<CR>
vmap <space>xi" :Tabularize /"<CR>

