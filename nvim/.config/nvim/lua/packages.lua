local ok, _ = pcall(require, "packer")
if not ok then
    print("Missing packer, so I'm installing it")
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        packer_bootstrap =
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
    end
end

local packer = require("packer")

packer.startup(function(use)
    use("wbthomason/packer.nvim")
    -- My plugins here
    use("lewis6991/impatient.nvim")
    use("folke/which-key.nvim")
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use({
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { { "nvim-telescope/telescope.nvim" } },
    })

    -- Debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- Snippet
    use("L3MON4D3/LuaSnip")

    -- LSP
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })
    -- Completion
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    -- Linting and format
    use("jose-elias-alvarez/null-ls.nvim")

    -- Git
    use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
    use("lewis6991/gitsigns.nvim")

    -- Utils
    use("lewis6991/spellsitter.nvim")
    use("kylechui/nvim-surround")
    use("windwp/nvim-autopairs")
    use("phaazon/hop.nvim")
    use("numToStr/Comment.nvim")
    use("NvChad/nvim-colorizer.lua")
    use("gpanders/editorconfig.nvim")
    use("andymass/vim-matchup")
    use('nmac427/guess-indent.nvim') -- Detect indent automatically

    -- UI
    use("nvim-lualine/lualine.nvim")
    use("kyazdani42/nvim-tree.lua")
    use("akinsho/bufferline.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    -- Theme's
    use("Th3Whit3Wolf/one-nvim")
    use("luisiacc/gruvbox-baby")
    use("folke/tokyonight.nvim")
    use("shaunsingh/moonlight.nvim")
    -- Icon's
    use("kyazdani42/nvim-web-devicons")
    use("onsails/lspkind.nvim")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        packer.sync()
    end
end)
