vim.g.coc_global_extensions = {'coc-yaml', 'coc-go', 'coc-rust-analyzer', 'coc-rls', 'coc-db', 'coc-tslint-plugin', 'coc-pyright', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-vimlsp'}

function _G.pumvisible()
	return vim.fn.pumvisible() == 1
end

function _G.check_back_space()
	local col = vim.fn.col('.') - 1
	return col <= 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end

function _G.esc(cmd)
  return vim.api.nvim_replace_termcodes(cmd, true, false, true)
end

vim.api.nvim_set_keymap("n", "<Esc>", ":call coc#float#close_all() <CR>", {noremap = true})
vim.api.nvim_set_keymap("i", "<C-Space>", 'coc#refresh()', {noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap("i", "<TAB>", 'v:lua.pumvisible() ? v:lua.esc("<C-n>") : v:lua.check_back_space() ? v:lua.esc("<TAB>") : coc#refresh()', {noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", 'v:lua.pumvisible() ? v:lua.esc("<C-p>") : v:lua.esc("<C-h>")', {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", 'v:lua.pumvisible() ? v:lua.esc("<C-y>") : v:lua.esc("<C-g>u<CR>")', {noremap = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
vim.api.nvim_set_keymap("n", "[g", '<Plug>(coc-diagnostic-prev)', {silent = true})
vim.api.nvim_set_keymap("n", "]g", '<Plug>(coc-diagnostic-next)', {silent = true})
-- Remap keys for gotos
vim.api.nvim_set_keymap("n", "gd", '<Plug>(coc-definition)', {silent = true})
vim.api.nvim_set_keymap("n", "gy", '<Plug>(coc-type-definition)', {silent = true})
vim.api.nvim_set_keymap("n", "gi", '<Plug>(coc-implementation)', {silent = true})
vim.api.nvim_set_keymap("n", "gr", '<Plug>(coc-references)', {silent = true})
-- Remap keys for rename
vim.api.nvim_set_keymap("n", "<Leader>rn", '<Plug>(coc-rename)', {})
-- Remap for format selected region
vim.api.nvim_set_keymap("x", "<Leader>f", '<Plug>(coc-format-selected)', {})
vim.api.nvim_set_keymap("n", "<Leader>f", '<Plug>(coc-format-selected)', {})
-- Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vim.api.nvim_set_keymap("x", "<Leader>as", '<Plug>(coc-codeaction-selected)', {})
vim.api.nvim_set_keymap("n", "<Leader>as", '<Plug>(coc-codeaction-selected)', {})
-- Remap for do codeAction of current line
vim.api.nvim_set_keymap("n", "<Leader>ac", '<Plug>(coc-codeaction)', {})
-- Fix autofix problem of current line
vim.api.nvim_set_keymap("n", "<Leader>qf", '<Plug>(coc-fix-current)', {})
-- Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
vim.api.nvim_set_keymap("n", "<C-d>", '<Plug>(coc-range-select)', {silent = true})
vim.api.nvim_set_keymap("x", "<C-d>", '<Plug>(coc-range-select)', {silent = true})
-- Show all diagnostics
vim.api.nvim_set_keymap("n", "<Space>a", ':<C-u>CocList diagnostics<CR>', {noremap = true, silent = true})
-- Manage extensions
vim.api.nvim_set_keymap("n", "<Space>e", ':<C-u>CocList extensions<CR>', {noremap = true, silent = true})
-- Show commands
vim.api.nvim_set_keymap("n", "<Space>c", ':<C-u>CocList commands', {noremap = true, silent = true})
-- Find symbol of current document
vim.api.nvim_set_keymap("n", "<Space>o", ':<C-u>CocList outline', {noremap = true, silent = true})
-- Search workspace symbols
vim.api.nvim_set_keymap("n", "<Space>s", ':<C-u>CocList -I symbols', {noremap = true, silent = true})
-- Do default action for next item.
vim.api.nvim_set_keymap("n", "<Space>j", ':<C-u>CocNext', {noremap = true, silent = true})
-- Do default action for previous item.
vim.api.nvim_set_keymap("n", "<Space>k", ':<C-u>CocPrev', {noremap = true, silent = true})
-- Resume latest coc list
vim.api.nvim_set_keymap("n", "<Space>p", ':<C-u>CocListResume', {noremap = true, silent = true})

vim.cmd [[ command! -nargs=0 Format :call CocAction('format') ]]
vim.cmd [[ command! -nargs=? Fold :call CocAction('fold', <f-args>) ]]
vim.cmd [[ command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport') ]]
vim.cmd [[ command! -nargs=0 Prettier :CocCommand prettier.formatFile ]]
