local ok, spellcheck = pcall(require, "spellsitter")
if not ok then
	print("Missing plugin spellsitter")
	return
end

spellcheck.setup()
