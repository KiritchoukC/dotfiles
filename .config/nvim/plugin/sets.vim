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
" copy indent from current line when starting a new line
set autoindent
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
" keep an offset when scrolling
set scrolloff=8 sidescrolloff=5
" show the current mode on the last line
set noshowmode
" set a ruler at column 90
set colorcolumn=90
" always show sign column
set signcolumn=yes
" use 2 lines for the command line
set cmdheight=2
" Always show status line
set laststatus=2
" enables command-line completion
set wildmenu
" reload buffer when file is changed outside of vim
set autoread
" command line history
if &history < 1000
  set history=1000
endif
" maximum number of tab pages to be opened by the |-p| command line
if &tabpagemax < 50
  set tabpagemax=50
endif

set encoding=utf-8


"""""""""""""""""""""""
" SENSIBLE
"""""""""""""""""""""""

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif
