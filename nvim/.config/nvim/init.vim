" ========================================
"       Coded by Guillaume QUITTET
"         Date Fri. 17th Aug 2018
" ========================================
call plug#begin('~/.local/share/nvim/plugged')

" Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ALE (Asynchronous Lint Engine)
Plug 'w0rp/ale'

" Vim-Android
Plug 'hsanson/vim-android'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Clang-complete : for C/C++ autocomplete
" Need to install clang
Plug 'Rip-Rip/clang_complete'

" Deoplete for async completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Denite for helm feature and better implementation that Unite
Plug 'Shougo/denite.nvim'

" VIM-Dispatch : Useful for starting Omnisharp
Plug 'tpope/vim-dispatch'

" Dracula theme
Plug 'dracula/vim'

" Easy Motion : faster move in vim
" Press <Leader><Leader> and the letter that you want to go
Plug 'easymotion/vim-easymotion'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Emmet : new ZenCoding
" Use abreviations and then type : <C-Y>,
Plug 'mattn/emmet-vim'

" Git
Plug 'tpope/vim-fugitive'

" Grammalecte
Plug 'dpelle/vim-Grammalecte'

" Gruvbox
Plug 'morhetz/gruvbox'

" Indent Guide
Plug 'nathanaelkane/vim-indent-guides'

" JavaComplete2
Plug 'artur-shaik/vim-javacomplete2'

" Jedi vim : Python completition
" Don't forget to install this : sudo pip install jedi
Plug 'davidhalter/jedi-vim'

" Markdown
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Matchit : useful to switch between the start and the end of a function
Plug 'tmhedberg/matchit'

" NERDCommenter : Better comments in vim
Plug 'scrooloose/nerdcommenter'

" NERDTree
Plug 'scrooloose/nerdtree'
" NERDTree GIT support
Plug 'Xuyuanp/nerdtree-git-plugin'

" Numbers.vim
Plug 'myusuf3/numbers.vim'

" Paper color theme
Plug 'NLKNguyen/papercolor-theme'

" PHP Autocomplete
Plug 'shawncplus/phpcomplete.vim'

" Plantuml-previewer
Plug 'weirongxu/plantuml-previewer.vim'
" Plantuml-syntax
Plug 'aklt/plantuml-syntax'
" Dependency
Plug 'tyru/open-browser.vim'

" Surround
Plug 'tpope/vim-surround'

" Table mode
Plug 'dhruvasagar/vim-table-mode'

" Tabular : useful for great alignement
Plug 'godlygeek/tabular'

" TagBar
" Install ctags before use it
Plug 'majutsushi/tagbar'

" Tern
" For JavaScript IDE features
" Don't forget to run 'npm install' in this extension folder to install the
" server
Plug 'ternjs/tern_for_vim'

" VimTex
Plug 'lervag/vimtex'

" NVIM-TypeScript
" Don't forget to do :UpdateRemotePlugins
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" UndoTree : See all undos
Plug 'mbbill/undotree'

" VueJS
Plug 'posva/vim-vue'


" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required



" ====================================================
" Global configuration
" ====================================================

set autowrite                       " Save automatically all the buffers in vim
set autochdir                       " Set the working directory
set backup
set colorcolumn=81                  " Set the 80 character column
set cursorline                      " Highlight the current line
set encoding=utf-8
set hidden                          " Any buffer can be hidden
set history=1000                    " Set a huge history
set linespace=0                     " No extra spaces between rows
set nojoinspaces                    " Prevents inserting two spaces after punctuation on a join (J)
set path+=**                        " fuzzy matching
set relativenumber                  " set the number in vim
set scrolljump=5                    " Lines to scroll when cursor leaves screen
set scrolloff=3                     " Minimum lines to keep above and below cursor
set showmatch                       " Show current brackets
set splitbelow                      " Puts new split windows to the bottom of the current
set splitright                      " Puts new vsplit windows to the right of the current
set wildmenu                        " Show list instead of just completing
set wildmode=list:longest,full      " Command <Tab> completion, list matches, then longest common part, then all.
set winminheight=0                  " Windows can be 0 line height

" Folding
set nofoldenable          " Auto fold code
set foldmethod=syntax   " Fold are defined by syntax highlighting

" Indentation
" Don't enable smarindent or cindent with filetype plugin indent on
filetype plugin indent on   " Indentation based on filetype
set autoindent              " Does not interfere with other indentation settings

" Invisible characters
set list
set listchars=tab:»»,trail:•,nbsp:~     " Display invisible characters

" Mouse
set mouse=a

" Netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" Omni Completiton
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType typescript setlocal omnifunc=TSComplete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Search
set hlsearch     " highlight the search result
set ignorecase   " Case insensitive search
set incsearch    " Find as I type during the search
set smartcase    " Case sensitive only if search contains uppercase letter.

" Tabulation and spaces
set expandtab            " Show spaces instead of tabs
set shiftwidth=0         " columns per <<
set softtabstop=4        " spaces per tab
set tabstop=4            " columns per tabs

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
set formatoptions-=t             " Keep my textwidth setting
set textwidth=0                  " Word wrap without line break
set wrapmargin=0                 " Word wrap without line break
set whichwrap=b,s,h,l,<,>,[,]    " Backspace and cursor keys wrap too
set wrap linebreak               " Set wrapping with soft wrap (set wm=2 => hard wrap)



"=====================================================
" Keymap configuration
"=====================================================

let mapleader = ","
let maplocalleader = ","

" Shortcuts
nmap <silent> <Space><Tab> <Esc>/<++><Enter>:nohl<Enter>"_c4l

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Buffer
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bd :bdelete<CR>

" Denite file rec
nmap <leader>p :Denite file_rec<CR>
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
map <C-h> :nohl<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

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
map <leader>tt :TagbarToggle<CR>

" Undo tree
map <Leader>u :UndotreeToggle<CR>



" ====================================================
" Plugins configuration
" ====================================================

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1

" ALE
" Lint only when I save the file
" let g:ale_lint_on_text_changed = 'never'
" Linters
let g:ale_linters = {
\   'tex': ['chktex', 'proselint', 'write-good'],
\}

" Android
let g:android_sdk_path = "/opt/android/sdk"

" Clang completition
let g:clang_library_path='/usr/lib'
" Fix conflix with autopair
autocmd FileType c let AutoPairsMapCR = 0
autocmd FileType c imap <silent> <CR> <CR><Plug>AutoPairsReturn

" Deoplete
let g:deoplete#enable_at_startup = 1

" Git
" Useful git help
" Instead of reverting the cursor to the last position in the buffer, we set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Grammalecte
let g:grammalecte_cli_py='/opt/grammalecte/cli.py'

" Indent Guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree GIT
let g:NERDTreeShowIgnoredStatus = 1

" Numbers.vim
let g:enable_numbers = 1
let g:numbers_exclude = ['unite', 'startify', 'w3m', 'vimshell', 'tagbar', 'gundo', 'minibufexpl', 'nerdtree']
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" vim-table-mode
" Compatibility with markdown
let g:table_mode_corner='|'

" Undo tree
let g:undotree_SetFocusWhenToggle=1

" VimTex
" View software
let g:vimtex_view_method = 'zathura'

" Vue
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1



"=====================================================
" Spellchecking
"=====================================================

map <F9> <Esc>:silent setlocal spell! spelllang=en<CR>
map <F10> <Esc>:silent setlocal spell! spelllang=fr<CR>
set spellsuggest=best



"=====================================================
" Theme
"=====================================================

" GUI settings
if (has("gui_running"))
    set guifont="Fira Code 10"
    set guioptions-=m    " remove menu bar
    set guioptions-=T    " remove toolbar
    set guioptions-=r    " remove right-hand scroll bar
    set guioptions-=L    " remove left-hand scroll bar
endif


" Use GUI colors in terminal
" if (has("termguicolors"))
    " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    " set termguicolors
" endif

" Set the full color compatibility for vim and terminal
syntax enable
let g:gruvbox_italic = '1'
colorscheme gruvbox
set background=dark
" colorscheme PaperColor
" set background=light
