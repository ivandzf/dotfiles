vim.g.fzf_layout = {window = {width = 0.9, height = 0.9}}

vim.api.nvim_set_var("FZF_DEFAULT_OPTS",
                     "--ansi --preview-window 'right:60%' --layout reverse --margin=1")
vim.api.nvim_set_var("FZF_DEFAULT_COMMAND",
                     "rg --files --ignore-case --hidden -g '!{.git,node_modules,vendor}/*'")

vim.api.nvim_set_keymap("n", "<Leader>bl", ":Buffers<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>h", ":History<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>F", ":Files<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>gf", ":GFiles<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>l", ":BLines<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>L", ":Lines<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>'", ":Marks<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>/", ":Rg<Space>", {noremap = true})

vim.cmd [[ 
	command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0) 
]]

vim.cmd [[ command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%') : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'), <bang>0) ]]
