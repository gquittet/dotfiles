local ok, nvim_autopairs = pcall(require, "nvim-autopairs")
if not ok then
	print("Missing plugin nvim-autopairs")
	return
end

nvim_autopairs.setup({})
