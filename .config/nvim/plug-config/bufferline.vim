nnoremap <silent> <Leader>. :BufferLineCycleNext<CR>
nnoremap <silent> <Leader>, :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent> <Leader>bn :BufferLineMoveNext<CR>
nnoremap <silent> <Leader>bp :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent> <Leader>be :BufferLineSortByExtension<CR>
nnoremap <silent> <Leader>bd :BufferLineSortByDirectory<CR>

nnoremap <silent> <Leader>bg :BufferLinePick<CR>
