let g:go_gopls_enabled = 0
let g:go_def_mapping_enabled =  0

let g:go_fmt_fail_silently = 1
"let g:go_fmt_experimental = 1
let g:go_fmt_command = "goimports"

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_parameters = 1
let g:go_doc_keywordprg_enabled = 0
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }

nnoremap <silent> <Leader>fs :GoFillStruct<CR>
nnoremap <silent> <Leader>er :GoIfErr<CR>


