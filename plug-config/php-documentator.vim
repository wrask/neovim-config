au BufRead,BufNewFile *.php inoremap <buffer> <C-E> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php nnoremap <buffer> <C-E> :call PhpDoc()<CR>
au BufRead,BufNewFile *.php vnoremap <buffer> <C-E> :call PhpDocRange()<CR>
