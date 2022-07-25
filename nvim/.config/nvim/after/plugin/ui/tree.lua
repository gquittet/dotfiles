local ok, tree = pcall(require, "nvim-tree")
if not ok then
	print("Missing plugin nvim-tree")
	return
end

tree.setup()
