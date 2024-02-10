local lsp = require('lsp-zero')

lsp.preset('recommended')


-- fix undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<CR>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({ mapping = cmp_mappings })
--[[
lsp.set_preferences({ sign_icons = {} })
--]]

lsp.set_preferences({
		suggest_lsp_servers = true,
		sign_icons = {
				error = 'E',
				warn  = 'W',
				hint = 'H',
				info = 'I'
		}
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', 'K',  function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set('n', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)

end)

-- require lua language lsp
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').denols.setup({
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end
})

require('lspconfig').psalm.setup({
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end
})

--[[
require('lspconfig').phpactor.setup({
		on_attach = function(client, bufnr)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentFormattingRangeProvider = false

			print(string.format('php! FIX YOUR LSP %s', bufnr))
			vim.cmd('augroup Phpactor')
			vim.cmd('autocmd!')
			vim.cmd('autocmd Filetype php command! -nargs=0 PhpactorReindex lua vim.lsp.buf_notify(0, "phpactor/indexer/reindex", {})')
			vim.cmd('augroup END')
		end,
		on_init = function()
		end,

		init_options = {
			["language_server_phpstan.enabled"] = false,
			["language_server_psalm.enabled"] = false,
			["code_transform.import_globals"] = true,
			["language_server_code_transform.import_globals"] = true,
			['language_server_code_transform.import_name.report_non_existing_names'] = false,
			["class_to_file.brute_force_conversion"] = true,
			["code_transform.indentation"] = "\t",
		}
})
--]]

lsp.setup()

vim.diagnostic.config({
		virtual_text = true
})
