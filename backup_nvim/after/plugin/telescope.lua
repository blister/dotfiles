require('telescope').setup({
	defaults = {
		layout_strategy = 'horizontal',
		sorting_strategy = 'ascending',
		layout_config = {
			prompt_position = 'top',
		},
	},
})

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files in project directory' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find files with a live grep' })
vim.keymap.set('n', '<C-f>', builtin.git_files, { desc = 'Find files in git project' })
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = '[f]ind [s]tring in files.'})
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
