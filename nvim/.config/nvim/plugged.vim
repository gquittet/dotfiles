call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'                                          " Vim-Airline
Plug 'vim-airline/vim-airline-themes'                                   " Vim-Airline theme
Plug 'w0rp/ale'                                                         " ALE (Asynchronous Lint Engine)
Plug 'hsanson/vim-android'                                              " Vim-Android
Plug 'jiangmiao/auto-pairs'                                             " Autopairs
Plug 'itchyny/calendar.vim'                                             " Calendar
Plug 'Rip-Rip/clang_complete'                                           " Clang-complete : for C/C++ autocomplete (need to install clang)

function! InstallDeps(info)
    if a:info.status == 'installed' || a:info.force
        let extensions = ['coc-emmet',     \
                          'coc-highlight', \
                          'coc-html',      \
                          'coc-css',       \
                          'coc-vetur',     \
                          'coc-java',      \
                          'coc-yaml',      \
                          'coc-snippets',  \
                          'coc-tsserver',  \
                          'coc-json'       \
                          ]
        call coc#util#install()
        call coc#util#install_extension(extensions)
    endif
endfunction
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': function('InstallDeps')}  " COC - Completiton

if has('nvim')                                                          " Defx.nvim file explorer
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/denite.nvim'                                               " Denite for helm feature and better implementation that Unite

Plug 'tpope/vim-dispatch'                                               " VIM-Dispatch : Useful for starting Omnisharp
Plug 'easymotion/vim-easymotion'                                        " Easy Motion : faster move in vim (press <Leader><Leader> and the letter that you want to go)
Plug 'editorconfig/editorconfig-vim'                                    " EditorConfig
Plug 'mattn/emmet-vim'                                                  " Emmet : new ZenCoding (<C-Y>,)
Plug 'tpope/vim-fugitive'                                               " Git
Plug 'dpelle/vim-Grammalecte'                                           " Grammalecte
Plug 'nathanaelkane/vim-indent-guides'                                  " Indent Guide
Plug 'davidhalter/jedi-vim'                                             " Jedi vim : Python completition (don't forget to install this : sudo pip install jedi)

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } " Markdown
Plug 'tmhedberg/matchit'                                                " Matchit: useful to switch between the start and the end of a function
Plug 'terryma/vim-multiple-cursors'                                     " Multiple cursors like sublime text
Plug 'scrooloose/nerdcommenter'                                         " NERDCommenter : Better comments in vim
Plug 'moll/vim-node'                                                    " Vim NodeJS
Plug 'myusuf3/numbers.vim'                                              " Numbers.vim
Plug 'jceb/vim-orgmode'                                                 " Org mode
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }       " PHP Autocomplete
Plug 'weirongxu/plantuml-previewer.vim'                                 " Plantuml-previewer
Plug 'tyru/open-browser.vim'                                            " Plantuml-previewer dependency
Plug 'aklt/plantuml-syntax'                                             " Plantuml-syntax
Plug 'tpope/vim-surround'                                               " Surround
Plug 'dhruvasagar/vim-table-mode'                                       " Table mode
Plug 'godlygeek/tabular'                                                " Tabular : useful for great alignement
Plug 'majutsushi/tagbar'                                                " TagBar (install ctags before use it)
Plug 'lervag/vimtex'                                                    " VimTex
Plug 'HerringtonDarkholme/yats.vim'                                     " TypeScript syntax highlighting
Plug 'mbbill/undotree'                                                  " UndoTree : See all undos
Plug 'posva/vim-vue'                                                    " VueJS

" Themes
Plug 'morhetz/gruvbox'                                                  " Gruvbox
Plug 'sonph/onehalf', {'rtp': 'vim/'}                                   " One Half
Plug 'NLKNguyen/papercolor-theme'                                       " Paper color theme
Plug 'jacoborus/tender.vim'                                             " Tender

" Font icons
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

