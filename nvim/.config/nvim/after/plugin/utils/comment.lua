local ok, comment = pcall(require, "Comment")
if not ok then
	print("Missing plugin comment")
	return
end

comment.setup()
