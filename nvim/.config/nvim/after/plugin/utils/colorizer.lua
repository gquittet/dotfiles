local ok, colorizer = pcall(require, "colorizer")
if not ok then
	print("Missing plugin colorizer")
	return
end

colorizer.setup()
