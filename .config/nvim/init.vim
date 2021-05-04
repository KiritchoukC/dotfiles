syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
" GLOBAL
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'wakatime/vim-wakatime'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf'
Plug 'preservim/nerdtree'
Plug 'tree-sitter/tree-sitter'
Plug 'sheerun/vim-polyglot'
" DOTNET
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
call plug#end()

let g:airline_theme='onedark'
colorscheme onedark
