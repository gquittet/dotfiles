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

" Git
nmap <silent> <leader>gs :<C-u>Gstatus<CR>
nmap <silent> <leader>ga. :<C-u>Git add .<CR>
nmap <silent> <leader>gaa :<C-u>Git add -A<CR>
nmap <silent> <leader>gb :<C-u>GBranches<CR>
nmap <silent> <leader>gbl :<C-u>Gblame<CR>
nmap <silent> <leader>gc :<C-u>Gcommit<CR>
nmap <silent> <leader>gdd :<C-u>Gdiff<CR>
nmap <silent> <leader>gdv :<C-u>Gvdiffsplit!<CR>
nmap <silent> <leader>gda :<C-u>diffget //2<CR>
nmap <silent> <leader>gd; :<C-u>diffget //3<CR>
nmap <silent> <leader>gl :<C-u>Glog<CR>
nmap <silent> <leader>gP :<C-u>Gpush<CR>
nmap <silent> <leader>gp :<C-u>Gpull<CR>
nmap <silent> <leader>gr :<C-u>Gread<CR>
nmap <silent> <leader>gw :<C-u>Gwrite<CR>
nmap <silent> <leader>gW :<C-u>Gwrite!<CR>
nmap <silent> <leader>ge :<C-u>Gedit<CR>

" Highlight
map <silent> <leader>nh :<C-u>nohl <bar> :let @/ = "" <bar> echo ':nohl'<CR>


" Toggle
nmap <silent> <leader>tc :<C-u>let &background = ( &background == "dark"? "light" : "dark" )<CR>
nmap <silent> <leader>te :<C-u>CocCommand explorer<CR>
nmap <silent> <leader>ti :<C-u>IndentGuidesToggle<CR>
nmap <silent> <leader>tn :<C-u>call ToggleNumber()<CR>
nmap <silent> <leader>tr :<C-u>RainbowToggle<CR>
nmap <silent> <leader>to :<C-u>Vista!!<CR>
nmap <silent> <leader>tu :<C-u>UndotreeToggle<CR>

function! ToggleNumber()
    if g:enable_numbers
        set nonumber
        set norelativenumber
        call NumbersDisable()
        let g:number_status = 'off'
    else
        set number
        set relativenumber
        call NumbersEnable()
        let g:number_status = 'on'
    endif
endfunction

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
nmap <silent> <leader>ri<Bar> :<C-u>Tabularize /<Bar><CR>
vmap <silent> <leader>ri<Bar> :<C-u>Tabularize /<Bar><CR>
nmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
vmap <silent> <leader>ri\ :<C-u>Tabularize /\\<CR>
nmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>
vmap <silent> <leader>ri" :<C-u>Tabularize /"<CR>

