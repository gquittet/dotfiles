local ok, lualine = pcall(require, "lualine")
if not ok then
	print("Missing plugin lualine")
	return
end

lualine.setup({
	theme = nil,
	options = { section_separators = "", component_separators = "" },
	sections = {
		lualine_a = { {
			"mode",
			fmt = function(str)
				return str:sub(1, 1)
			end,
		} },
		lualine_b = { "branch" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "progress" },
		lualine_z = {},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})
