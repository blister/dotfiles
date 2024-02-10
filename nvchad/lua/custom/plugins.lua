local overrides = require("custom.configs.overrides")
local loop = vim.loop
local lspconfig = require('lspconfig')

local plugins = {
	{
		"theprimeagen/harpoon",
		lazy = false,
		init = function()
			-- do nothing
			require('harpoon')
		end,
		config = function()
			local mark = require('harpoon.mark')
			local ui = require('harpoon.ui')
			vim.keymap.set('n', '<leader>a', mark.add_file, { desc = '[a]dd file' })
			vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, { desc = 'Bring up harpoon menu' })

			vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end)
			vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end)
			vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end)
			vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end)
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"williamboman/mason.nvim",
		opts = function()
		  return require "plugins.configs.mason"
		end,

	},

	{
		"gbprod/phpactor.nvim",
		ft = "php",
		requires = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
		on_init = function(client)
			local path = client.workspace_folders[1].name
			print(path)
		end,
		init_options = {
			["class_to_file.project_root"] = lspconfig.util.root_pattern('composer.json'),
		},
		config = function(client)
			require("phpactor.handler.update")
			require('phpactor').setup({
				install = {
					path = vim.fn.stdpath('data') .. '/mason/share/phpactor/',
					bin = vim.fn.stdpath('data') .. '/mason/bin/phpactor',
				},
			})
		end,
	},

	{
		"wansmer/treesj",
		lazy = false,
		config = function()
			require('treesj').setup({
				max_join_length = 240,
				check_syntax_error = false,
			})
		end,
	},

}

return plugins
