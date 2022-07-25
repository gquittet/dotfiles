function let_null_ls_handle_format(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({
                    async = true,
                    bufnr = bufnr,
                    filter = function(client)
                        return client.name == "null-ls"
                    end
                })
            end,
        })
    end
end

local ok_mason, mason = pcall(require, "mason")
if not ok_mason then
    print("Missing plugin mason plugins")
    return
end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then
    print("Missing plugin mason-lspconfig plugins")
    return
end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        -- Shell
        "bashls",
        -- Python
        "pyright",
        "sourcery",
        -- Lua
        "sumneko_lua",
        -- JavaScript
        "angularls",
        "tailwindcss",
        "tsserver",
        -- Conf files
        "yamlls",
    }
})

local ok, lsp = pcall(require, "navigator")
if not ok then
    print("Missing plugin lsp plugins")
    return
end

lsp.setup({
    mason = true,
    keymaps = {
        { key = '<Leader>f', func = vim.lsp.buf.format, mode = 'n', desc = 'format' },
        { key = '<Leader>f', func = vim.lsp.buf.range_formatting, mode = 'v', desc = 'range format' },
    },
    lsp = {
        format_on_save = true,
    }
})


local ok_null_ls, null_ls = pcall(require, "null-ls")
if not ok_null_ls then
    print("Missing plugin null-ls")
    return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
    sources = {
        diagnostics.eslint,
        diagnostics.pylint,
        diagnostics.shellcheck,
        formatting.black,
        formatting.eslint,
        formatting.isort,
        formatting.prettier,
        formatting.stylua,
    },
    on_attach = let_null_ls_handle_format,
})
