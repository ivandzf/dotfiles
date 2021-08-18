vim.g.go_gopls_enabled = 0
vim.g.go_def_mapping_enabled =  0

vim.g.go_fmt_fail_silently = 1
vim.g.go_fmt_command = "goimports"
vim.g.go_auto_type_info = 0

vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_operators = 0
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_variable_declarations = 1
vim.g.go_highlight_variable_assignments = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_doc_keywordprg_enabled = 0

vim.api.nvim_set_keymap("n", "<Leader>fs", ":GoFillStruct<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>er", ":GoIfErr<CR>", {noremap = true})
