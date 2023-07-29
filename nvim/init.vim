set nu
set relativenumber

" fuzzy searching inside of current directory
set path+=**
set wildmenu

" snippets
nnoremap ,html :-1read $HOME/.vim/skeleton.html<CR>


set showcmd

" plugins
call plug#begin()

" nerdtree
Plug 'preservim/nerdtree', { 'on' : 'NERDTreeToggle' }

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.2' }

call plug#end()

nnoremap ,ff <cmd>Telescope find_files<cr>

" php is killing me to death
" do not let vim do bullshit to me. I will type
" what I want to type.
filetype indent off
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
