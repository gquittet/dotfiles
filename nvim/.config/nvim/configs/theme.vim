"=====================================================
" Theme
"=====================================================

" GUI settings
if (has("gui_running"))
    set guifont="fantasque sans mono 10"
    set guioptions-=m    " remove menu bar
    set guioptions-=T    " remove toolbar
    set guioptions-=r    " remove right-hand scroll bar
    set guioptions-=L    " remove left-hand scroll bar
endif

" Transparent background
" au ColorScheme * hi Normal ctermbg=none guibg=none
" au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=none

" Use GUI colors in terminal
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" Set the full color compatibility for vim and terminal
syntax enable

" colorscheme gruvbox
" let g:gruvbox_italic = '1'
" set background=dark

" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'

let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

" colorscheme onehalflight
" let g:airline_theme='onehalflight'

" colorscheme PaperColor
" set background=light

" colorscheme tender
" let g:airline_theme = 'tender'

