fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup TWS
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
