local ok, indent_guide = pcall(require, 'indent_blankline')

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

indent_guide.setup({
    show_current_context = true,
    show_current_context_start = true,
})
