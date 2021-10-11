" add field to constructor for dependency injection
nnoremap <silent> <leader>zi $hvbb"zy/)<CR>i,<CR><ESC>"zph"xyiw/}<CR>Othis.<ESC>"xpa<space>=<space><ESC>"xpA;<ESC><C-O><C-O>$
" put usings inside namespace
nnoremap <silent> <leader>zu gg/sing<CR>hV/namespace<CR>kd/{<CR>pV/public\|protected\|private<CR>k>
" Add interface
nnoremap <silent> <leader>zI _ww"zyiwA,<space>I<esc>"zp
" standard try catch
nnoremap <silent> <leader>zts cctry<CR>{<CR>}<CR>catch(Exception<space>ex)<CR>{<CR>ThrowException(ex,<space>methodName:<space>DebugHelper.GetMethodName(this));<CR>throw;<CR>}<ESC>
" event try catch
nnoremap <silent> <leader>zte cctry<CR>{<CR>}<CR>catch(Exception<space>ex)<CR>{<CR>HandleEventException(ex,<space>DebugHelper.GetMethodName(this),<space>e);<CR>}<ESC>
" make string an interpolated string by adding $ at the beginning
nnoremap <leader>zs ?"<CR>i$<ESC>``l
" copy outer method
nnoremap <silent> yaf ?public\|protected\|private\|function<CR>{jVN/{<CR>%y
" copy outer method and paste below
nnoremap <silent> yafp ?public\|protected\|private\|function<CR>{jVN/{<CR>%yn%o<ESC>p
" cut outer method
nnoremap <silent> daf ?public\|protected\|private\|function<CR>{jVN/{<CR>%d
" copy inner method
nnoremap <silent> yif ?public\|protected\|private\|function<CR>/{<CR>jyiB
" cut inner method
nnoremap <silent> dif ?public\|protected\|private\|function<CR>/{<CR>jdiB
" comment outer method
nnoremap <silent> <leader>/af ?public\|protected\|private\|function<CR>{jVN/{<CR>%:vsc Edit.CommentSelection<CR>
" uncomment outer method
nnoremap <silent> <leader>?af ?public\|protected\|private\|function<CR>{jVN/{<CR>%:vsc Edit.UncommentSelection<CR>
" comment inner method
nnoremap <silent> <leader>/if ?public\|protected\|private\|function<CR>/{<CR>jVk%k:vsc Edit.CommentSelection<CR>
" uncomment inner method
nnoremap <silent> <leader>?if ?public\|protected\|private\|function<CR>/{<CR>jVk%k:vsc Edit.UncommentSelection<CR>
