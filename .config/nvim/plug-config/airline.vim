let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_theme='edge'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_highlighting_cache = 1
let g:airline#extensions#whitespace#enabled = 0

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
