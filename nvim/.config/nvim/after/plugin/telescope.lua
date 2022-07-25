local ok, telescope = pcall(require, "telescope")
if not ok then
	print("Missing plugin telescope")
	return
end

telescope.setup({
	defaults = {
        preview = false,
        prompt_prefix = " ➡️  ",
		mappings = {
			i = {
				["<C-h>"] = "which_key",
			},
		},
	},
})
