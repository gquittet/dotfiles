set cmdheight=2
let g:echodoc_enable_at_startup = 1

" Close echodoc window after deoplete completion
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | silent! pclose | endif
