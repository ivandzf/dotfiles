vim.g.NERDTreeDirArrowExpandable = '▸'
vim.g.NERDTreeDirArrowCollapsible = '▾'
vim.g.NERDTreeWinPos = "right"
vim.g.NERDTreeIgnore = {'^node_modules$','^vendor$','^.git$','^.cache$'}
vim.g.NERDTreeAutoDeleteBuffer = 1
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeDirArrows = 1
vim.g.NERDTreeWinSize = 40
vim.api.nvim_set_keymap("n", "<Leader>t", ":NERDTreeToggle<CR>", {noremap = true, silent = true})

vim.cmd [[autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
]]
