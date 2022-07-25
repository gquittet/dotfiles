vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 0
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

local ok_guess_indent, guess_indent = pcall(require, "guess-indent")
if not ok_guess_indent then
    print("Missing guess-indent")
    return
end

guess_indent.setup({})
