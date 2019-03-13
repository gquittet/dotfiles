"=====================================================
" Keymap configuration
"=====================================================

let mapleader = ","
let maplocalleader = ","

" Disable arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" Shortcuts
nmap <silent> <Space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l

" ALE
nmap <silent> <leader>ak <Plug>(ale_previous_wrap)
nmap <silent> <leader>aj <Plug>(ale_next_wrap)

" Buffer
nnoremap <A-Right> :bnext<CR>
nnoremap <A-Left> :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bd :bdelete<CR>

" COC
inoremap <silent><expr> <c-space> coc#refresh()                      " Use <c-space> for trigger completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"        " Use <cr> for confirm completion, <C-g>u means break undo chain at current position.
nmap <silent> [c <Plug>(coc-diagnostic-prev)                         " Use [c and ]c for navigate diagnostics
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)                              " Remap keys for gotos
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>              " Use K for show documentation in preview window
nmap <leader>rn <Plug>(coc-rename)                                   " Remap for rename current word
vmap <leader>f  <Plug>(coc-format-selected)                          " Remap for format selected region
nmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>a  <Plug>(coc-codeaction-selected)                      " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)                              " Remap for do codeAction of current line
nmap <leader>qf  <Plug>(coc-fix-current)                             " Fix autofix problem of current line
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>            " Show all diagnostics
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>             " Manage extensions
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>               " Show commands
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>                " Find symbol of current document
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>             " Search workspace symbols
nnoremap <silent> <space>j  :<C-u>CocNext<CR>                        " Do default action for next item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>                        " Do default action for previous item.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>                  " Resume latest coc list


" Defx
nnoremap <leader>tv :Defx -split=vertical -winwidth=40 -direction=topleft<CR>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> E
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> o
                \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'mark:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
endfunction

" Denite file rec
nmap <leader>p :DeniteProjectDir -buffer-name=git file_rec/git<CR>
nmap <leader>o :DeniteProjectDir -buffer-name=files file_rec<CR>
nmap <leader>f :DeniteProjectDir -buffer-name=grep -default-action=quickfix grep:::!<CR>
nmap <leader>g :Denite grep<CR>

" Git
nmap <leader>gs :Gstatus<CR>
nmap <leader>ga :Git add -A<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>ge :Gedit<CR>

" Highlight
map <leader>nh :nohl<CR>

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
nmap <Leader>t& :Tabularize /&<CR>
vmap <Leader>t& :Tabularize /&<CR>
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t=> :Tabularize /=><CR>
vmap <Leader>t=> :Tabularize /=><CR>
nmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t: :Tabularize /:<CR>
nmap <Leader>t:: :Tabularize /:\zs<CR>
vmap <Leader>t:: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,<CR>
vmap <Leader>t, :Tabularize /,<CR>
nmap <Leader>t,, :Tabularize /,\zs<CR>
vmap <Leader>t,, :Tabularize /,\zs<CR>
nmap <Leader>t<Bar> :Tabularize /<Bar><CR>
vmap <Leader>t<Bar> :Tabularize /<Bar><CR>
nmap <Leader>t\ :Tabularize /\\<CR>
vmap <Leader>t\ :Tabularize /\\<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" Tagbar
nmap <leader>tb :TagbarToggle<CR>

" Typescript
nmap tsd :TSDef<CR>
nmap tsi :TSImport<CR>
nmap tsoi :TSImport<CR>


" Undo tree
nmap <Leader>ut :UndotreeToggle<CR>

