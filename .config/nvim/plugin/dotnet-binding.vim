" add field to constructor for dependency injection
nnoremap <silent> <leader>zi $hvbb"zy/)<CR>kA,<CR><ESC>cc<ESC>"zpbx"xyiw>>>>>>/}<CR>O_<ESC>"xpa<space>=<space><ESC>"xpA;<ESC><C-O><C-O>$
" Add interface
nnoremap <silent> <leader>zI _ww"zyiwA,<space>I<esc>"zp
" make string an interpolated string by adding $ at the beginning
nnoremap <leader>zs ?"<CR>i$<ESC>``l

" select outer method
nnoremap <silent> vaa ?public\|protected\|private\|function<CR>{jVN/{<CR>%
" select inner method
nnoremap <silent> vai ?public\|protected\|private\|function<CR>/{<CR>jVk%k 
" yank outer method
nnoremap <silent> yaf ?public\|protected\|private\|function<CR>{jVN/{<CR>%y
" yank outer method and paste below
nnoremap <silent> yafp ?public\|protected\|private\|function<CR>{jVN/{<CR>%yn%o<ESC>p
" cut outer method
nnoremap <silent> daf ?public\|protected\|private\|function<CR>{VN/{<CR>%d
" yank inner method
nnoremap <silent> yif ?public\|protected\|private\|function<CR>/{<CR>jyiB
" cut inner method
nnoremap <silent> dif ?public\|protected\|private\|function<CR>/{<CR>jdiB

" find next method
nnoremap <silent> <leader>nm /public\|protected\|private\|function<CR>f(b
" find previous method
nnoremap <silent> <leader>pm ?public\|protected\|private\|function<CR>f(b
