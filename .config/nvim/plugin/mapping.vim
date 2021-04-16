let mapleader = " "

" inoremap jk <ESC>

nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '>-2<CR>gv=gv

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "+d
vnoremap <leader>d "+d
nnoremap <leader>D gg"+dG
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

nnoremap <leader>j J
nnoremap <leader>k K
vnoremap <leader>j J
vnoremap <leader>k K
nnoremap <leader>w :w<CR>
nnoremap <leader>i i<CR><ESC>
nnoremap <leader>a a<CR><ESC>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>
nnoremap <leader>r *Ncgn
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>= gg=G<C-o>
nnoremap <leader>vs :vs<CR><C-h>ZZ<C-l>
nnoremap <leader>hs :split<CR><C-k>ZZ<C-l>
nnoremap <leader>,, f,a<CR><ESC>
nnoremap <leader>.. f.i<CR><ESC>
nnoremap <leader>A ddO
nnoremap <leader><leader>piw viwp
nnoremap <leader><leader>pp Vp
