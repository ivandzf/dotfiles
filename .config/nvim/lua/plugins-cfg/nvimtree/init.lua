vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_follow = 0

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 1

vim.g.nvim_tree_width = 40
vim.g.nvim_tree_width_allow_resize = 1
vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_tab_open = 0
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_auto_open = 0

vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1, folder_arrows = 1}

vim.g.nvim_tree_ignore = {".git", "node_modules", ".cache", "vendor"}
vim.g.nvim_tree_auto_ignore_ft = {"startify", "vista", "undotree"}
vim.g.nvim_tree_root_folder_modifier = ":p:~"
vim.g.nvim_tree_special_files = {}

function NvimTreeOSOpen()
  local lib = require "nvim-tree.lib"
  local node = lib.get_node_at_cursor()
  if node then vim.fn.jobstart("open '" .. node.absolute_path .. "' &", {detach = true}) end
end

require("nvim-tree.events").on_nvim_tree_ready(function()
  vim.cmd("NvimTreeRefresh")
end)

local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", opts)


