---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		--	format with conform
		["<leader>f"] = {
			function()
				--require("conform").format()
				vim.lsp.buf.format()
			end,
			"formatting",
		},

		-- better page / code movement
		["<C-j>"] = { "<C-d>zz", "Move down one page" },
		["<C-k>"] = { "<C-u>zz", "Move up one page" },

		-- keep cursor in the same spot
		["J"] = { "mzJ`z", "Smoosh lines" },

		-- searching movement
		["n"] = { "nzzzv", "Find next search term" },
		["N"] = { "nzzzv", "Find next search term" },

		-- make the current file executable
		--["<leader>x"] = { "<cmd>!chmod +x %<CR>", "Make file executable" },

		["<leader>pv"] = { vim.cmd.Ex, "Show current folder contents."},

		-- quake style fast buffer swaps
		["q"] = { "<C-^>", "Go to prev file in buffer." },
		["<C-q>"] = { "<C-^>", "Go to prev file in buffer." },
		["e"] = { "<cmd>bn<CR>", "Go to next file in buffer." },
	},

	v = {
		[">"] = { ">gv", "indent" },
		["J"] = { ":m '>+1<CR>gv=gv", "Move entire block up"},
		["K"] = { ":m '<-2<CR>gv=gv", "Move entire block down"},
	},
}

-- more keybinds!

return M
