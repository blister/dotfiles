-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use({
		'dracula/vim',
		as = 'dracula',
		config = function()
			vim.cmd('colorscheme dracula')
		end
	})

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use('nvim-treesitter/playground')
	use('nvim-treesitter/nvim-treesitter-context')

	-- treesj toggle <leader>m (toggle node>
	use({
		'wansmer/treesj',
		requires = { 'nvim-treesitter' },
		config = function()
			require('treesj').setup({

			})
		end
	})

	-- consider kevinhwang91/nvim-bqf
	-- considerf-person/git-blame.nvim
	use({ 'folke/trouble.nvim' })

	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	-- cool editing plugins 
	use({
		'kylechui/nvim-surround',
		tag = '*',
		config = function()
			require('nvim-surround').setup({
			})
		end
	})



	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },  -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' }, -- Required
		}
	}

	use {
		'j-hui/fidget.nvim',
		tag = 'legacy',
		config = function()
			require("fidget").setup {
				-- options
			}
		end,
	}

	use 'nvim-tree/nvim-web-devicons'

	use { 'feline-nvim/feline.nvim', branch = '0.5-compat' }
	use { "catppuccin/nvim", as = "catppuccin" }
	use { 'folke/tokyonight.nvim' }
end)
