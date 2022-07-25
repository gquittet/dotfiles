pcall(require, "impatient")

require("packages")

-- Settings
require("settings.indent")
require("settings.numbers")
require("settings.search")

require("theme")

-- Utils
require("utils.external_changes")

local has = function(x)
	return vim.fn.has(x) == 1
end
local is_win = has("win32")

if is_win then
	require("windows")
else
	require("unix")
end
