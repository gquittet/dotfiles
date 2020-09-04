let mapleader = " "
let maplocalleader = " "

" Disable arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>

" Disable backspace
"noremap <BS> <Nop>
"inoremap <BS> <Nop>
"noremap <Del> <Nop>
"inoremap <Del> <Nop>

nnoremap <leader>c "_c
nnoremap <leader>d "_d
nnoremap <leader>dd "_dd
nnoremap <leader>D "_D
nnoremap <leader>x "_x

vnoremap <leader>c "_c
vnoremap <leader>d "_d
vnoremap <leader>x "_x

" Background color
nmap <silent> <Leader>tbg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Shortcuts
nmap <silent> <Space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" ALE
nmap <silent> [g <Plug>(ale_previous_wrap)
nmap <silent> ]g <Plug>(ale_next_wrap)

" Buffer
nnoremap <A-Right> :bnext<CR>
nnoremap <A-Left> :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bl :blast<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>bdd :bdelete!<CR>

" Git
nmap <leader>gs :Gstatus<CR>
nmap <leader>ga :Git add -A<CR>
nmap <leader>gbl :Gblame<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gfc :Gvdiffsplit!<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gP :Gpush<CR>
nmap <leader>gp :Gpull<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>ge :Gedit<CR>

" Highlight
map <silent> <leader>h :nohl <bar> :let @/ = ""<CR>

" Nerdtree
map <leader>te :NERDTreeToggle<CR>
map <leader>fte :NERDTreeFind<CR>

" Numbers.vim
nmap <F3> :NumbersToggle<CR>
nmap <F4> :NumbersOnOff<CR>

" Rainbow
nmap <leader>tr :RainbowToggle<CR>

" Settings
" Reload settings
nnoremap <leader>sr :source ~/.config/nvim/init.vim <bar> :call webdevicons#refresh()<CR>

" Tabular
nmap <leader>t& :Tabularize /&<CR>
vmap <leader>t& :Tabularize /&<CR>
nmap <leader>t- :Tabularize /-<CR>
vmap <leader>t- :Tabularize /-<CR>
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t=> :Tabularize /=><CR>
vmap <leader>t=> :Tabularize /=><CR>
nmap <leader>t: :Tabularize /:<CR>
vmap <leader>t: :Tabularize /:<CR>
nmap <leader>t:: :Tabularize /:\zs<CR>
vmap <leader>t:: :Tabularize /:\zs<CR>
nmap <leader>t, :Tabularize /,<CR>
vmap <leader>t, :Tabularize /,<CR>
nmap <leader>t,, :Tabularize /,\zs<CR>
vmap <leader>t,, :Tabularize /,\zs<CR>
nmap <leader>t<Bar> :Tabularize /<Bar><CR>
vmap <leader>t<Bar> :Tabularize /<Bar><CR>
nmap <leader>t\ :Tabularize /\\<CR>
vmap <leader>t\ :Tabularize /\\<CR>
nmap <leader>t" :Tabularize /"<CR>
vmap <leader>t" :Tabularize /"<CR>

" Tagbar
nmap <leader>to :Vista!!<CR>

" Undo tree
nmap <Leader>tu :UndotreeToggle<CR>

