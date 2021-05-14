let mapleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sane redo.
noremap U <C-r>
" +/- increment and decrement.
nnoremap + <C-a>|nnoremap - <C-x>
" move line down
vnoremap <C-e> :m '>+1<CR>gv=gv
" move line up
vnoremap <C-i> :m '>-2<CR>gv=gv
" join lines
nnoremap <leader>j J | vnoremap <leader>j J
" get help for the command under the caret
nnoremap <leader>k K | vnoremap <leader>k K
" reload .vimrc
nnoremap <leader>x :so $MYVIMRC<CR>
" save buffer
nnoremap <leader>w :w<CR>
" return to line before the caret
nnoremap <leader>i i<CR><ESC>
" return to line after the caret
nnoremap <leader>a a<CR><ESC>
" insert a blank line below
nnoremap <leader>l o<ESC>
" insert a blank line above
nnoremap <leader>L O<ESC>
" rename word under the caret and replace the occurences with '.'
nnoremap <leader>r *Ncgn
" close all the buffers but the current one
nnoremap <leader>to :tabonly<CR>
" format the whole buffer
nnoremap <leader>= gg=G<C-o>
" vertical split
nnoremap <leader>vs :vs<CR>
" horizontal split
nnoremap <leader>hs :split<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" yank to system cb
nnoremap <leader>y "+y | vnoremap <leader>y "+y
" cut to system cb
nnoremap <leader>d "+d | vnoremap <leader>d "+d
" past from system cb after caret
nnoremap <leader>p "+p | vnoremap <leader>p "+p
" past from system cb before caret
nnoremap <leader>P "+P | vnoremap <leader>P "+P
" yank the whole buffer to system cb
nnoremap <leader>Y gg"+yG
" cut the whole buffer to system cb
nnoremap <leader>D gg"+dG

" leader shortcuts
nnoremap <leader>,, f,a<CR><ESC>
nnoremap <leader>.. f.i<CR><ESC>
nnoremap <leader>A ddO
nnoremap <leader><leader>piw viwpyiw
nnoremap <leader><leader>pp Vpyy

" --- COLEMAK ---
inoremap ao <ESC>

" remapping hjkl to neio
nnoremap n h | vnoremap n h
nnoremap e j | vnoremap e j
nnoremap i k | vnoremap i k
nnoremap o l | vnoremap o l

" fast neio moves
nnoremap N ^ | vnoremap N ^
nnoremap E 5j | vnoremap E 5j
nnoremap I 5k | vnoremap I 5k
nnoremap O $ | vnoremap O $

" remapping vim neio to hjkl
nnoremap h n | vnoremap h n
nnoremap j e | vnoremap j e
nnoremap k i | vnoremap k i
nnoremap l o | vnoremap l o

nnoremap H N | vnoremap H N
nnoremap J E | vnoremap J E
nnoremap K I | vnoremap K I
nnoremap L O | vnoremap L O

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
