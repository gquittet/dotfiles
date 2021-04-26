if (has("gui_running"))
    if g:os == "Darwin" || g:os == "Windows"
        set guifont="CaskaydiaCove Nerd Font Mono:h10"
    elseif g:os == "Linux"
        set guifont="CaskaydiaCove Nerd Font Mono 10"
    endif
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

"colorscheme gruvbox
"let g:gruvbox_italic = '1'
"set background=dark

"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

"let ayucolor="light" " for mirage version of theme
"colorscheme ayu

" colorscheme moonshine

"colorscheme nord

" colorscheme onehalflight
let g:airline_theme='onehalflight'

colorscheme PaperColor
set background=light

" colorscheme tender
" let g:airline_theme = 'tender'

" Material oceanic
" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material
" let g:airline_theme='material'

" set background=dark
" colorscheme moonlight
" let g:moonlight_terminal_italics=1

" let g:tokyonight_style = 'storm' " available: night, storm
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
" let g:airline_theme = "tokyonight"

" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:airline_theme='space'

" Solarized
" colorscheme NeoSolarized
" set background=dark
