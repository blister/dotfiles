function Colors(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

	vim.cmd('hi TreesitterContextBottom gui=underline guisp=Grey')
	-- vim.highlight.create('TreesitterContextBottom', { gui = 'underline', guisp = 'Grey' })
end

Colors()
