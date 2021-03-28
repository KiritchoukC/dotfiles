
let mapleader = " "
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '>-2<CR>gv=gv

inoremap jk <ESC>

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>p "+p
nnoremap <leader>P "+P
noremap j gj

noremap k gk
nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k
" move between windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap 0 ^
inoremap jk <ESC>
nnoremap H ^
nnoremap L $

" backup
nnoremap <leader>j J
nnoremap <leader>k K
vnoremap <leader>j J
vnoremap <leader>k K

nnoremap <leader>w :w<CR>
" put to next line
nnoremap <leader>i i<CR><ESC>
" put to next line
nnoremap <leader>a a<CR><ESC>
nnoremap <leader><CR> o<ESC>
