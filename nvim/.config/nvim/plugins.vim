" Auto install vim-plug
call plug#begin('~/.local/share/nvim/plugged')
if empty(glob($XDG_DATA_HOME.'/nvim/site/autoload/plug.vim'))
    silent !curl -fLo $XDG_DATA_HOME.'/nvim/site/autoload/plug.vim' --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins

" Copilot
" Plug 'github/copilot.vim'

" Tree explorer
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 't9md/vim-choosewin' " Needed to select which buffer will be replace
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

" Git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'                                          " VSCode: GitLens feature

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
Plug 'weirongxu/plantuml-previewer.vim'                                 " Plantuml-previewer
Plug 'tyru/open-browser.vim'                                            " Plantuml-previewer dependency
Plug 'dhruvasagar/vim-table-mode'                                       " Table mode
Plug 'godlygeek/tabular'                                                " Tabular : useful for great alignement
Plug 'mbbill/undotree'                                                  " UndoTree : See all undos

" {{{ Lua Plugins

" Required by many Lua plugins
Plug 'kyazdani42/nvim-web-devicons'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP
Plug 'neovim/nvim-lspconfig'

" Popup vim implementation for neovim
Plug 'nvim-lua/popup.nvim'
" Speed up nvim lua
Plug 'nvim-lua/plenary.nvim'

" Show LSP diagnostics
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'

" Telescope
Plug 'nvim-telescope/telescope.nvim'

" Autopair
Plug 'windwp/nvim-autopairs'

" Lua line
Plug 'nvim-lualine/lualine.nvim'

" Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Git
Plug 'lewis6991/gitsigns.nvim'

" }}}

" Database management features
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'liuchengxu/vim-which-key'

" Detect indent automatically
Plug 'tpope/vim-sleuth'

" Highlights patterns and ranges
Plug 'markonm/traces.vim'

" Maximize window and restore them
Plug 'szw/vim-maximizer'

" Go to the good location
Plug 'justinmk/vim-sneak'

" Join and Split line easily
Plug 'AndrewRadev/splitjoin.vim'

" Case conversion
" Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), snake_case
" (crs), UPPER_CASE (cru), dash-case (cr-), dot.case (cr.), space case
" (cr<space>), and Title Case (crt) are all just 3 keystrokes away.
Plug 'tpope/vim-abolish'

" Better whitespace management for Vim
Plug 'ntpeters/vim-better-whitespace'

" Languages
Plug 'tpope/vim-jdaddy' " JSON
Plug 'Stautob/vim-fish'
Plug 'jceb/vim-orgmode'
Plug 'jparise/vim-graphql'

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-bash --enable-rust --enable-python --force-enable-node'}

" Snippets
Plug 'SirVer/ultisnips'   " Engine
Plug 'honza/vim-snippets' " Snippets

" Themes
Plug 'ayu-theme/ayu-vim'                                                " Ayu
Plug 'icymind/NeoSolarized'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Performance improvement with CursorHold
Plug 'antoinemadec/FixCursorHold.nvim'

" Debug startup time
Plug 'dstein64/vim-startuptime'


" All of your Plugins must be added before the following line
call plug#end()             " required
syntax enable               " required

