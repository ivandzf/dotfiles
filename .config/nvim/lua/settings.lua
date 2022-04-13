vim.o.fileencoding = "utf-8"
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.g.t_Co = 256 -- Support 256 colors
vim.g.syntax_on = true -- syntax highlighting
vim.o.showcmd = true
vim.o.cmdheight = 2
vim.o.completeopt = "menu,menuone,noselect"

vim.o.conceallevel = 0

vim.g.autointend = true
vim.g.smartintend = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.o.wrap = true
vim.o.linebreak = true
vim.o.showbreak = "..."

vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.incsearch = true

vim.wo.number = true -- set numbered lines
vim.wo.relativenumber = false -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

vim.o.backup = false -- This is recommended by coc
vim.o.swapfile = false
vim.o.writebackup = false -- This is recommended by coc

vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.hidden = true
vim.o.laststatus = 3

-- experimental
--vim.o.foldmethod = "expr"
--vim.o.foldexpr = "nvim_treesitter#foldexpr()"
