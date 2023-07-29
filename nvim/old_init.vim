set nu
set relativenumber

" fuzzy searching inside of current directory
set path+=**
set wildmenu

" snippets
nnoremap ,html :-1read $HOME/.vim/skeleton.html<CR>

" do not let vim do bullshit to me. I will type
" what I want to type.
set autoindent
filetype indent off

set showcmd

" plugins
call plug#begin()

" nerdtree
Plug 'preservim/nerdtree', { 'on' : 'NERDTreeToggle' }

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.2' }

call plug#end()
