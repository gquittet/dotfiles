local ok, surround = pcall(require, "nvim-surround")
if not ok then
	print("Missing nvim-surround")
	return
end

surround.setup()
