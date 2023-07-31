vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- VISUAL - J/K MOVE ENTIRE BLOCK UP/DOWN
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- J (keep cursor in same spot)
vim.keymap.set('n', 'J', 'mzJ`z')

-- movement improvements
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- keep search terms in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- preserve paste buffer when deleting highlighted word
vim.keymap.set('x', '<leader>p', "\"_dP")

-- yank into system clipboard so that I can paste externally
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

-- turn off Q
vim.keymap.set('n', 'Q', '<nop>')

-- vim project through tmux
vim.keymap.set('n', '<C-t>', '<cmd>silent !tmux neww tmux-sessionizer.sh<CR>')
vim.keymap.set('n', '<leader>f', function()
	vim.lsp.buf.format()
end)

-- quickfix navigation
--[[
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
--]]
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('n', '<leader>t', function()
	require('treesitter-context').go_to_context()
end)
