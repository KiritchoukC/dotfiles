let mapleader = " "

" move line down
vnoremap <C-e> :m '>+1<CR>gv=gv
" move line up
vnoremap <C-i> :m '>-2<CR>gv=gv

" use system clipboard
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

" backup
nnoremap <leader>j J
nnoremap <leader>k K
vnoremap <leader>j J
vnoremap <leader>k K

" leader shortcuts
nnoremap <leader>x :so $MYVIMRC<CR>
nnoremap <leader>w :wa<CR>
nnoremap <leader>i i<CR><ESC>
nnoremap <leader>a a<CR><ESC>
nnoremap <leader>l o<ESC>
nnoremap <leader>L O<ESC>
" rename multiple occurence, . replace next
nnoremap <leader>r *Ncgn
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>= gg=G<C-o>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>hs :split<CR>
nnoremap <leader>,, f,a<CR><ESC>
nnoremap <leader>.. f.i<CR><ESC>
nnoremap <leader>A ddO
nnoremap <leader><leader>piw viwpyiw
nnoremap <leader><leader>pp Vpyy

" --- COLEMAK ---
inoremap ao <ESC>
inoremap a; <ESC>A;<ESC>
inoremap a, <ESC>A,<ESC>

" remapping hjkl to neio
nnoremap n h
nnoremap e j
nnoremap i k
nnoremap o l
vnoremap n h
vnoremap e j
vnoremap i k
vnoremap o l

" fast neio moves
nnoremap N ^
nnoremap E 5j
nnoremap I 5k
nnoremap O $
vnoremap N ^
vnoremap E 5j
vnoremap I 5k
vnoremap O $

" remapping vim neio to hjkl
nnoremap k n
nnoremap K N
vnoremap k n
vnoremap K N

nnoremap j e
nnoremap J E
vnoremap j e
vnoremap J E

nnoremap h i
nnoremap H I
vnoremap h i
vnoremap H I

nnoremap L O
nnoremap l o
vnoremap L O
vnoremap l o

" neio text object
nn viw viw
nn vib vib
nn vip vip
nn viP viP
nn viB viB
nn vi' vi'
nn vi" vi"

" navigating windows
noremap <leader>wn <C-w>h
noremap <leader>we <C-w>j
noremap <leader>wi <C-w>k
noremap <leader>wo <C-w>l

" moving windows
noremap <leader>wN <C-w>H
noremap <leader>wE <C-w>J
noremap <leader>wI <C-w>K
noremap <leader>wO <C-w>L

" scrolling
noremap <C-j> <C-e>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sane redo.
noremap U <C-r>
" +/- increment and decrement.
nnoremap + <C-a>|nnoremap - <C-x>
"save all
nnoremap Zz :wa<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VS Code
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('g:vscode')
    nnoremap <leader>w :Write<CR>
endif
