vim.o.number = true
vim.o.relativenumber = true
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  command = "set norelativenumber",
  pattern = { "*" },
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  command = "set relativenumber",
  pattern = { "*" },
})

