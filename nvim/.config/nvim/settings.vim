set autoread                                                                " Auto reload file if it has been changed outside of vim
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

set autowrite                                                               " Save automatically all the buffers in vim
"set autochdir!                                                             " Set the working directory
set backspace=indent,eol,start                                              " Make backspace work like most other programs
set backup
set colorcolumn=81                                                          " Set the 80 character column (+1 if textwidth is defined else 81)
" set clipboard+=unnamedplus
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
set updatetime=100                                                          " vim-signify and coc need this settings
set winminheight=0                                                          " Windows can be 0 line height

" Folding
set foldmethod=syntax
set nofoldenable

" Fuzzy matching
set path+=**                                                                " fuzzy matching with :find *.ext*
set wildmenu                                                                " Show list instead of just completing
set wildignore+=**/node_modules/**                                          " Ignore some folders
set wildignore+=**/.git/**
set wildignore+=**/build/**
set wildignore+=**/dist/**

" Indentation
" Don't enable smarindent or cindent with filetype plugin indent on
filetype plugin indent on                                                   " Indentation based on filetype
set autoindent                                                              " Does not interfere with other indentation settings

" Invisible characters
set list
set listchars=tab:\¦\ ,trail:•,nbsp:~                                        " Display invisible characters

" Mouse
set mouse=a

" Search
set hlsearch                                                                " highlight the search result
set ignorecase                                                              " Case insensitive search
set incsearch                                                               " Find as I type during the search
set smartcase                                                               " Case sensitive only if search contains uppercase letter.

" Tabulation and spaces
set expandtab                                                               " Show spaces instead of tabs
set shiftwidth=0                                                            " columns per >>
set softtabstop=4                                                           " spaces per tab
set tabstop=4                                                               " columns per tabs

" Vim directories
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set viewdir=~/.local/share/nvim/views//

let folders = ["backup", "swap", "views"]
for folder in folders
  let folderPath = $XDG_DATA_HOME.'/nvim/'.folder
  if !isdirectory(folderPath)
    silent call mkdir (folderPath, 'p')
  endif
endfor

if has('persistent_undo')
  set undofile
  set undolevels=3000
  set undoreload=10000
endif
set backup
set noswapfile

" Wrapping
set formatoptions-=t                                                        " Keep my textwidth setting
set textwidth=0                                                             " Word wrap without line break
set wrapmargin=0                                                            " Word wrap without line break
set whichwrap=b,s,h,l,<,>,[,]                                               " Backspace and cursor keys wrap too
set wrap linebreak                                                          " Set wrapping with soft wrap (set wm=2 => hard wrap)

" Reload icons after init source
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
