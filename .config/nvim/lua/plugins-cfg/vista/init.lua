vim.g.vista_sidebar_position = "vertical topleft"
vim.g['vista#renderer#enable_icon'] = 1
vim.g.vista_default_executive = "ctags"
vim.g.vista_fzf_preview = {'right:50%'}

vim.api.nvim_set_keymap("n", "<Leader>z", ":Vista!!<CR>", {})
