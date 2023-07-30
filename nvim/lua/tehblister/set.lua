vim.opt.showcmd = true


vim.opt.nu = true
vim.opt.relativenumber = true

vim.api.nvim_command('filetype indent off')
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.autoindent = true

-- stuff from primeagen
vim.opt.wrap = false

-- let undo tree have access to lengthy history of edits
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- searching/highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

-- awesome scrolling controls
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

-- other stuff
vim.opt.updatetime = 50 -- use a fast update time

vim.opt.colorcolumn = "80"

-- snippets
--vim.keymap.set("n", "<leader>html", vim.cmd('-1read' .. os.getenv('HOME') .. '/dotfiles/skeletons/html<CR>'))

-- global leader key
vim.g.mapleader = ' '
