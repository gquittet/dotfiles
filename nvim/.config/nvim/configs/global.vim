" ====================================================
" Global configuration
" ====================================================

set autowrite                                                               " Save automatically all the buffers in vim
set autochdir                                                               " Set the working directory
set backspace=indent,eol,start                                              " Make backspace work like most other programs
set backup
set colorcolumn=81                                                          " Set the 80 character column (+1 if textwidth is defined else 81)
set cursorline                                                              " Highlight the current line
set encoding=utf-8
set hidden                                                                  " Any buffer can be hidden
set history=1000                                                            " Set a huge history
set lazyredraw                                                              " Render window only after the end of a macro
set linespace=0                                                             " No extra spaces between rows
set nojoinspaces                                                            " Prevents inserting two spaces after punctuation on a join (J)
set relativenumber                                                          " set the number in vim
set scrolljump=5                                                            " Lines to scroll when cursor leaves screen
set scrolloff=3                                                             " Minimum lines to keep above and below cursor
set showmatch                                                               " Show current brackets
set splitbelow                                                              " Puts new split windows to the bottom of the current
set splitright                                                              " Puts new vsplit windows to the right of the current
set winminheight=0                                                          " Windows can be 0 line height

" Fuzzy matching
set path+=**                                                                " fuzzy matching with :find *.ext*
set wildmenu                                                                " Show list instead of just completing
set wildignore+=**/node_modules/**                                          " Ignore some folders
set wildignore+=**/.git/**
set wildignore+=**/build/**
set wildignore+=**/dist/**

" Folding
" set nofoldenable                                                          " Disable folding
set foldmethod=syntax                                                       " Fold are defined by syntax highlighting
set foldcolumn=1                                                            " Defines 1 col at window left, to indicate folding
let javaScript_fold=1                                                       " Activate folding by JS syntax

" Indentation
" Don't enable smarindent or cindent with filetype plugin indent on
filetype plugin indent on                                                   " Indentation based on filetype
set autoindent                                                              " Does not interfere with other indentation settings

" Invisible characters
set list
set listchars=tab:»\ ,trail:•,nbsp:~                                        " Display invisible characters

" Mouse
set mouse=a

" Netrw
let g:netrw_banner=0                                                        " Disable banner
let g:netrw_browse_split = 4                                                " Open in prior window
let g:netrw_altv = 1                                                        " Open split to the right
let g:netrw_liststyle = 3                                                   " Tree view
let g:netrw_winsize = 20
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Omni Completiton
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Search
set hlsearch                                                                " highlight the search result
set ignorecase                                                              " Case insensitive search
set incsearch                                                               " Find as I type during the search
set smartcase                                                               " Case sensitive only if search contains uppercase letter.

" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per <<
set softtabstop=4                                                           " spaces per tab
set tabstop=4                                                               " columns per tabs

" Terminal
" Color palette
" let g:terminal_color_0 = '#000000'
" let g:terminal_color_1 = '#ff5555'
" let g:terminal_color_2 = '#50fa7b'
" let g:terminal_color_3 = '#f1fa8c'
" let g:terminal_color_4 = '#bd93f9'
" let g:terminal_color_5 = '#ff79c6'
" let g:terminal_color_6 = '#8be9fd'
" let g:terminal_color_7 = '#bfbfbf'
" let g:terminal_color_8 = '#4d4d4d'
" let g:terminal_color_9 = '#ff6e67'
" let g:terminal_color_10 = '#5af78e'
" let g:terminal_color_11 = '#f4f99d'
" let g:terminal_color_12 = '#caa9fa'
" let g:terminal_color_13 = '#ff92d0'
" let g:terminal_color_14 = '#9aedfe'
" let g:terminal_color_15 = '#e6e6e6'

" Vim directories
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set viewdir=~/.local/share/nvim/views//


" Wrapping
set formatoptions-=t                                                        " Keep my textwidth setting
set textwidth=0                                                             " Word wrap without line break
set wrapmargin=0                                                            " Word wrap without line break
set whichwrap=b,s,h,l,<,>,[,]                                               " Backspace and cursor keys wrap too
set wrap linebreak                                                          " Set wrapping with soft wrap (set wm=2 => hard wrap)

