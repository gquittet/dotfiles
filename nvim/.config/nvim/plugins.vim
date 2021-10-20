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

" Use release branch (recommend)
" coc.vim
let g:coc_global_extensions = [
    \ 'coc-angular',
    \ 'coc-css',
    \ 'coc-docker',
    \ 'coc-emmet',
    \ 'coc-emoji',
    \ 'coc-eslint',
    \ 'coc-explorer',
    \ 'coc-git',
    \ 'coc-graphql',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-markdownlint',
    \ 'coc-marketplace',
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-pyright',
    \ 'coc-rust-analyzer',
    \ 'coc-sh',
    \ 'coc-smartf',
    \ 'coc-snippets',
    \ 'coc-sql',
    \ 'coc-syntax',
    \ 'coc-texlab',
    \ 'coc-tailwindcss',
    \ 'coc-toml',
    \ 'coc-tslint-plugin',
    \ 'coc-tsserver',
    \ 'coc-vetur',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yaml',
    \ 'coc-yank'
    \ ]
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#add_extension() }}

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'                                                  " A Git commit browser
Plug 'rhysd/git-messenger.vim'                                          " VSCode: GitLens feature
Plug 'tpope/vim-rhubarb'                                                " Open file remotely, show related issue, etc

" Vim HTTP (handle http files that respect RFC 2616)
Plug 'nicwest/vim-http'

" Comment line (support vuejs and other complex formats)
Plug 'tomtom/tcomment_vim'

" Change brackets around text
Plug 'tpope/vim-surround'
" Vim Repeat for all commands (not only the native commands)
Plug 'tpope/vim-repeat'

Plug 'editorconfig/editorconfig-vim'
Plug 'dpelle/vim-Grammalecte'                                           " Grammalecte
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'adelarsq/vim-matchit'

Plug 'terryma/vim-multiple-cursors'                                     " Multiple cursors like sublime text
Plug 'myusuf3/numbers.vim'                                              " Numbers.vim
Plug 'weirongxu/plantuml-previewer.vim'                                 " Plantuml-previewer
Plug 'tyru/open-browser.vim'                                            " Plantuml-previewer dependency
Plug 'dhruvasagar/vim-table-mode'                                       " Table mode
Plug 'godlygeek/tabular'                                                " Tabular : useful for great alignement
Plug 'mbbill/undotree'                                                  " UndoTree : See all undos
Plug 'kkoomen/vim-doge'                                                 " Vim doge - Documentation generator for code
" See https://github.com/liuchengxu/vista.vim for dependencies installation
" instruction
Plug 'liuchengxu/vista.vim'

Plug 'nathanaelkane/vim-indent-guides'

" Database management features
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'pechorin/any-jump.vim'

Plug 'liuchengxu/vim-which-key'

" Detect indent automatically
Plug 'tpope/vim-sleuth'

" Highlights patterns and ranges
Plug 'markonm/traces.vim'

" Better whitespace management for Vim
Plug 'ntpeters/vim-better-whitespace'

" Languages
Plug 'ernstvanderlinden/vim-coldfusion'
Plug 'davejlong/cf-utils.vim'
Plug 'tpope/vim-jdaddy' " JSON
Plug 'Stautob/vim-fish'
Plug 'jceb/vim-orgmode'
Plug 'kkvh/vim-docker-tools'
" TypeScript
Plug 'leafgarland/typescript-vim'
" React
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

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
Plug 'kaicataldo/material.vim'
Plug 'mhartington/oceanic-next'
Plug 'karoliskoncevicius/moonshine-vim'
Plug 'Brettm12345/moonlight.vim'
Plug 'ghifarit53/tokyonight-vim'

" Debug startup time
Plug 'dstein64/vim-startuptime'

" Font icons
Plug 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

" dev-icons enable folders open/close icons
let g:DevIconsEnableFoldersOpenClose = 1
