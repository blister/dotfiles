vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Show current folder contents.' })

-- BUFFER SWAPPING. JUST LIKE QUAKE! Woot.
vim.keymap.set('n', 'q', '<cmd>bp<CR>', { desc = 'Go to prev file in buffer' })
vim.keymap.set('n', 'e', '<cmd>bn<CR>', { desc = 'Go to next file in buffer' })

-- VISUAL - J/K MOVE ENTIRE BLOCK UP/DOWN
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- J (keep cursor in same spot)
vim.keymap.set('n', 'J', 'mzJ`z')

-- movement improvements
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-j>', '<C-d>zz')
vim.keymap.set('n', '<C-k>', '<C-u>zz')

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

-- Trouble config
vim.keymap.set('n', '<leader>xx', function() require('trouble').open() end)
vim.keymap.set('n', '<leader>xw', function() require('trouble').open('workspace_diagnostics') end)
vim.keymap.set('n', '<leader>xd', function() require('trouble').open('document_diagnostics') end)
vim.keymap.set('n', '<leader>xq', function() require('trouble').open('quickfix') end)
vim.keymap.set('n', '<leader>xl', function() require('trouble').open('loclist') end)
vim.keymap.set('n', 'gR', function() require('trouble').open('lsp_references') end)

-- vim project through tmux
vim.keymap.set('n', '<C-t>', '<cmd>silent !tmux neww tms<CR>')
vim.keymap.set('n', '<leader>f', function()
	vim.lsp.buf.format()
end)

-- snippets
vim.keymap.set("n", "<leader>html", '<cmd>-1read ~/dotfiles/skeletons/html.html<CR>')

-- dope snippets for each language
vim.keymap.set('n', '<leader>node', function()
	local project = vim.fn.input('Project Name --> ')
	local fullyear = os.date('%Y')
	local fulldate = os.date('%Y-%j-%d %H:%M')

	vim.cmd("-1read ~/dotfiles/skeletons/nodejs.js")
	vim.cmd('%s/--PROJECTNAME--/' .. string.format('%s/g', project))
	vim.cmd('%s/--FULLYEAR--/' .. string.format('%s/g', fullyear))
	vim.cmd('%s/--FULLDATE--/' .. string.format('%s/g', fulldate))
end)
vim.keymap.set('n', '<leader>php', function()
	local project = vim.fn.input('Script Name --> ')
	local fullyear = os.date('%Y')
	local fulldate = os.date('%Y-%j-%d %H:%M')

	vim.cmd("-1read ~/dotfiles/skeletons/php.php")
	vim.cmd('%s/--PROJECTNAME--/' .. string.format('%s/g', project))
	vim.cmd('%s/--FULLYEAR--/' .. string.format('%s/g', fullyear))
	vim.cmd('%s/--FULLDATE--/' .. string.format('%s/g', fulldate))
end)



-- quickfix navigation
--[[
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
--]]

vim.keymap.set( "n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Toggle one-liner syntax' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {
	desc = 'Make this file executable',
	silent = true,
})

vim.keymap.set('n', '<leader>t', function()
	require('treesitter-context').go_to_context()
end, { desc = '<leader>[t] treesitter go to context' })
