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

let g:coc_global_extensions = [
            \ 'coc-css',
            \ 'coc-emmet',
            \ 'coc-eslint',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-lists',
            \ 'coc-markdownlint',
            \ 'coc-prettier',
            \ 'coc-python',
            \ 'coc-reason',
            \ 'coc-syntax',
            \ 'coc-texlab',
            \ 'coc-tslint-plugin',
            \ 'coc-tsserver',
            \ 'coc-vetur',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-yank'
            \ ]
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'                                          " VSCode: GitLens feature
Plug 'dpelle/vim-Grammalecte'                                           " Grammalecte
Plug 'airblade/vim-gitgutter'
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
"Plug 'sheerun/vim-polyglot'                                             " Vim Polyglot - A collection of language packs for Vim. Don't enable it because it's just FUCKNING slow.
Plug 'kkoomen/vim-doge'                                                 " Vim doge - Documentation generator for code
" See https://github.com/liuchengxu/vista.vim for dependencies installation
" instruction
Plug 'liuchengxu/vista.vim'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Detect indent automatically
Plug 'tpope/vim-sleuth'

" Snippets
Plug 'honza/vim-snippets'

" Coldfusion
Plug 'ernstvanderlinden/vim-coldfusion'

" Better whitespace management for Vim
Plug 'ntpeters/vim-better-whitespace'

" Themes
Plug 'ayu-theme/ayu-vim'                                                " Ayu
Plug 'morhetz/gruvbox'                                                  " Gruvbox
Plug 'arcticicestudio/nord-vim'
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
