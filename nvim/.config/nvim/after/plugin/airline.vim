"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#ale#enabled        = 1
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#capslock#enabled   = 1
let g:airline#extensions#coc#enabled        = 1
let g:airline#extensions#hunks#enabled      = 0
let g:airline#extensions#tabline#enabled    = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#vista#enabled      = 1
let g:airline#extensions#whitespace#enabled = 1

call airline#parts#define('custom_linenr', {'raw': '%4l', 'accent': 'bold'})

call airline#parts#define('custom_columnnr', {'raw': '%3v', 'accent': 'bold'})

" Update section z to just have line number
let g:airline_section_c = airline#section#create(['file'])
let g:airline_section_x = airline#section#create(['filetype'])
let g:airline_section_y = airline#section#create(['ffenc'])
let g:airline_section_z = airline#section#create(['custom_linenr', 'custom_columnnr'])

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Custom setup that removes filetype/whitespace from default vim airline bar
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z', 'warning', 'error']]

let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'

let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

" Configure error/warning section to use coc.nvim
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''

" Disable vim-airline in preview mode
let g:airline_exclude_preview = 1

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

