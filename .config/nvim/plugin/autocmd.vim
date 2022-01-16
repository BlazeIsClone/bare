" Remove trailing white space on save

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup The_INITHOOK
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
