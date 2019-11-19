" Auto install vim-plug
if has('nvim')
    call plug#begin('~/.local/share/nvim/plugged')
    if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
        silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
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

let g:coc_global_extensions = [
            \ 'coc-angular',
            \ 'coc-css',
            \ 'coc-emmet',
            \ 'coc-eslint',
            \ 'coc-flow',
            \ 'coc-flutter',
            \ 'coc-git',
            \ 'coc-highlight',
            \ 'coc-html',
            \ 'coc-java',
            \ 'coc-json',
            \ 'coc-lists',
            \ 'coc-markdownlint',
            \ 'coc-omnisharp',
            \ 'coc-phpls',
            \ 'coc-powershell',
            \ 'coc-prettier',
            \ 'coc-pyright',
            \ 'coc-python',
            \ 'coc-reason',
            \ 'coc-rls',
            \ 'coc-snippets',
            \ 'coc-solargraph',
            \ 'coc-svelte',
            \ 'coc-svg',
            \ 'coc-tabnine',
            \ 'coc-tailwindcss',
            \ 'coc-texlab',
            \ 'coc-tslint-plugin',
            \ 'coc-tsserver',
            \ 'coc-vetur',
            \ 'coc-vimlsp',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-yank'
            \ ]
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'dpelle/vim-Grammalecte'                                           " Grammalecte
Plug 'Yggdroot/indentLine'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'adelarsq/vim-matchit'

Plug 'terryma/vim-multiple-cursors'                                     " Multiple cursors like sublime text
Plug 'scrooloose/nerdcommenter'                                         " NERDCommenter : Better comments in vim
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'myusuf3/numbers.vim'                                              " Numbers.vim
Plug 'jceb/vim-orgmode'                                                 " Org mode
Plug 'weirongxu/plantuml-previewer.vim'                                 " Plantuml-previewer
Plug 'tyru/open-browser.vim'                                            " Plantuml-previewer dependency
Plug 'tpope/vim-surround'                                               " Surround
Plug 'dhruvasagar/vim-table-mode'                                       " Table mode
Plug 'godlygeek/tabular'                                                " Tabular : useful for great alignement
Plug 'mbbill/undotree'                                                  " UndoTree : See all undos
Plug 'sheerun/vim-polyglot'                                             " Vim Polyglot - A collection of language packs for Vim.
" See https://github.com/liuchengxu/vista.vim for dependencies installation
" instruction
Plug 'liuchengxu/vista.vim'

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

Plug 'psliwka/vim-smoothie'

" Themes
Plug 'ayu-theme/ayu-vim'                                                " Ayu
Plug 'morhetz/gruvbox'                                                  " Gruvbox
Plug 'sonph/onehalf', {'rtp': 'vim/'}                                   " One Half
Plug 'NLKNguyen/papercolor-theme'                                       " Paper color theme
Plug 'jacoborus/tender.vim'                                             " Tender

" Font icons
Plug 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

runtime plugins/markdown-preview.vim
