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

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Directory tree
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
