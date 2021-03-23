autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

au BufReadPost,BufNewFile *.re set ft=reason
au! BufRead,BufNewFile *.proto setfiletype proto
au! BufRead,BufNewFile *.vue setfiletype vue
