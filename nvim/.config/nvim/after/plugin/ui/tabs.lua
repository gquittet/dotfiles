local ok, tabs = pcall(require, "bufferline")
if not ok then
	print("Missing plugin bufferline.")
	return
end

tabs.setup()
