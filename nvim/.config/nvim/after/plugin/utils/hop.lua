local ok, hop = pcall(require, "hop")
if not ok then
	print("Missing plugin hop")
	return
end

-- you can configure Hop the way you like here; see :h hop-config
hop.setup({ keys = "etovxqpdygfblzhckisuran" })
