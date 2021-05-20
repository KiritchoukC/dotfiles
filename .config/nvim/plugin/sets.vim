" use local vimrc if exist
set exrc
" show numbers in margin
set nu
" show numbers relative to the current line
set relativenumber
" do not highlight search results
set nohlsearch
" do not hide inactive buffers
set hidden
" do not beep for error messages
set noerrorbells
" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4
" use indent in insert mode
set expandtab
" autoindent on new line
set smartindent
" prevent lines to wrap when reaching the edge of the window
set nowrap
" prevent from generating a .swp file
set noswapfile
" prevent from generating a backup file on overwrite
set nobackup
" where to keep the undo history
set undodir=~/.vim/undodir
" use file for undo history
set undofile
" show results during the search
set incsearch
" enable term colors
set termguicolors
" keep an offset of 8 lines when scrolling
set scrolloff=8
" show the current mode on the last line
set noshowmode
" set a ruler at column 90
set colorcolumn=90
" always show sign column
set signcolumn=yes
" use 2 lines for the command line
set cmdheight=2
