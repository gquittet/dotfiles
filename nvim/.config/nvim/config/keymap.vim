runtime keymap/markdown-preview.vim

let mapleader = " "
let maplocalleader = " "

" Disable arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

noremap c "_c
noremap d "_d
noremap dd "_dd
noremap D "_D
noremap x "_x

vnoremap c "_c
vnoremap d "_d
vnoremap x "_x

nnoremap <leader>c "+c
nnoremap <leader>d "+d
nnoremap <leader>dd "+dd
nnoremap <leader>D "+D
nnoremap <leader>x "+x

vnoremap <leader>c "+c
vnoremap <leader>d "+d
vnoremap <leader>x "+x

" Global search
nmap <silent> <leader>ff :Ag<CR>

nnoremap <silent><leader>fp :CtrlP<CR>
nnoremap <silent><leader>fo :CocList outline<CR>

" Save
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>W :w!<CR>

" Quit
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader>Q :q!<CR>

" Shortcuts
nmap <silent> <Space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Buffer
nnoremap <A-Right> :bnext<CR>
nnoremap <A-Left> :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bd :bdelete<CR>

" Git
nmap <leader>gs :Gstatus<CR>
nmap <leader>ga :Git add -A<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gpl :Gpull<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>ge :Gedit<CR>

" Highlight
map <leader>h :nohl<CR>

" Nerdtree
map <leader>te :NERDTreeToggle<CR>

" Numbers.vim
nmap <F3> :NumbersToggle<CR>
nmap <F4> :NumbersOnOff<CR>

" Split
" To use `ALT+{h,j,k,l}` to navigate windows from any mode
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Tabular
nmap <leader>t& :Tabularize /&<CR>
vmap <leader>t& :Tabularize /&<CR>
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
nmap <leader>to :Vista coc<CR>

" Undo tree
nmap <Leader>tu :UndotreeToggle<CR>

