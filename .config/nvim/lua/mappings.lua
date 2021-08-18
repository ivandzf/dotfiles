-- leader key
vim.api.nvim_set_keymap("n", ";", "<Nop>", {noremap = true})
vim.g.mapleader = ";"

-- custom
vim.api.nvim_set_keymap("n", "<Leader>n", ":noh<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "qq", ":q<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "fs", ":w<CR>", {noremap = true})

-- copy paste
vim.api.nvim_set_keymap("n", "<Leader>y", '"+y', {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>p", '"+p<Paste>', {noremap = true})

-- pane
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", {noremap = true})

-- split
vim.api.nvim_set_keymap("n", "<Leader>v", ":vsp", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>vv", ":sp", {noremap = true})

-- resize
vim.api.nvim_set_keymap("n", "<C-u>", ":res +5<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-i>", ":vertical resize +10<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-o>", ":vertical resize -10<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-p>", ":res -5<CR>", {noremap = true})

-- jump in
vim.api.nvim_set_keymap("n", "J", "10j", {noremap = true})
vim.api.nvim_set_keymap("n", "K", "10k", {noremap = true})

-- force yourself to stop using the arrow keys
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", {noremap = true})

vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", {noremap = true})
vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", {noremap = true})

-- move line
vim.api.nvim_set_keymap("n", "∆", ":m .+1<CR>==", {noremap = true})
vim.api.nvim_set_keymap("n", "˚", ":m .-2<CR>==", {noremap = true})
vim.api.nvim_set_keymap("i", "∆", "<Esc>:m .+1<CR>==gi", {noremap = true})
vim.api.nvim_set_keymap("i", "˚", "<Esc>:m .-2<CR>==gi", {noremap = true})
vim.api.nvim_set_keymap("v", "∆", ":m '>+1<CR>gv=gv", {noremap = true})
vim.api.nvim_set_keymap("v", "˚", ":m '<-2<CR>gv=gv", {noremap = true})
