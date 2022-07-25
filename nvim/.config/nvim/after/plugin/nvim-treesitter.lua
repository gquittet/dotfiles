local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
	print("Missing plugin nvim-treesitter")
	return
end

ts.setup({
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		"css",
		"comment",
		"fish",
		"html",
		"javascript",
		"json",
		"lua",
		"markdown",
		"rust",
		"scss",
		"toml",
		"tsx",
		"typescript",
		"yaml",
	},
	autotag = {
		enable = true,
	},
    matchup = {
        enable = true,
    }
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
