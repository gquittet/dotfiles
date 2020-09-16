" Auto install vim-plug
if has('nvim')
    call plug#begin('~/.local/share/nvim/plugged')
    if empty(glob($XDG_DATA_HOME.'/nvim/site/autoload/plug.vim'))
        silent !curl -fLo $XDG_DATA_HOME.'/nvim/site/autoload/plug.vim' --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif

if has('vim')
    call plug#begin('~/.vim/autoload/plug.vim')
    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
endif

Plug 'vim-airline/vim-airline'                                          " Vim-Airline
Plug 'vim-airline/vim-airline-themes'                                   " Vim-Airline theme
Plug 'w0rp/ale'                                                         " ALE (Asynchronous Lint Engine)

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'                                                  " A Git commit browser
Plug 'rhysd/git-messenger.vim'                                          " VSCode: GitLens feature
Plug 'tpope/vim-rhubarb'                                                " Open file remotely, show related issue, etc
Plug 'airblade/vim-gitgutter'

" Comment line (support vuejs and other complex formats)
Plug 'tomtom/tcomment_vim'

" Tree view
Plug 'preservim/nerdtree'

" Autopair
Plug 'jiangmiao/auto-pairs'

" Change brackets around text
Plug 'tpope/vim-surround'

Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'dpelle/vim-Grammalecte'                                           " Grammalecte
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'adelarsq/vim-matchit'

Plug 'terryma/vim-multiple-cursors'                                     " Multiple cursors like sublime text
Plug 'myusuf3/numbers.vim'                                              " Numbers.vim
Plug 'weirongxu/plantuml-previewer.vim'                                 " Plantuml-previewer
Plug 'tyru/open-browser.vim'                                            " Plantuml-previewer dependency
Plug 'luochen1990/rainbow'
Plug 'dhruvasagar/vim-table-mode'                                       " Table mode
Plug 'godlygeek/tabular'                                                " Tabular : useful for great alignement
Plug 'mbbill/undotree'                                                  " UndoTree : See all undos
Plug 'kkoomen/vim-doge'                                                 " Vim doge - Documentation generator for code
" See https://github.com/liuchengxu/vista.vim for dependencies installation
" instruction
Plug 'liuchengxu/vista.vim'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Detect indent automatically
Plug 'tpope/vim-sleuth'

" Better whitespace management for Vim
Plug 'ntpeters/vim-better-whitespace'

" Lint and format
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Virutal env
Plug 'PieterjanMontens/vim-pipenv'
Plug 'plytophogy/vim-virtualenv'

" Languages
Plug 'ernstvanderlinden/vim-coldfusion'
Plug 'davejlong/cf-utils.vim'
Plug 'Stautob/vim-fish'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jceb/vim-orgmode'
Plug 'posva/vim-vue'
Plug 'HerringtonDarkholme/yats.vim'

" Snippets
Plug 'SirVer/ultisnips'   " Engine
Plug 'honza/vim-snippets' " Snippets

" Themes
Plug 'ayu-theme/ayu-vim'                                                " Ayu
Plug 'icymind/NeoSolarized'
Plug 'morhetz/gruvbox'                                                  " Gruvbox
Plug 'sonph/onehalf', {'rtp': 'vim/'}                                   " One Half
Plug 'NLKNguyen/papercolor-theme'                                       " Paper color theme
Plug 'jacoborus/tender.vim'                                             " Tender
Plug 'hzchirs/vim-material'
Plug 'mhartington/oceanic-next'

" Font icons
Plug 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

" dev-icons enable folders open/close icons
let g:DevIconsEnableFoldersOpenClose = 1

" Enable rainbow
let g:rainbow_active = 1
