require("nvim-tree.events").on_nvim_tree_ready(function()
    vim.cmd("NvimTreeRefresh")
end)

require'nvim-tree'.setup {
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {"startify", "vista", "undotree"},
    auto_close = true,
    open_on_tab = false,
    update_to_buf_dir = {
        enable = true,
        auto_open = true
    },
    hijack_cursor = false,
    update_cwd = false,
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {}
    },
    system_open = {
        cmd = nil,
        args = {}
    },
    filters = {
        dotfiles = true,
        customs = {".git", "node_modules", ".cache", "vendor"}
    },
    view = {
        width = 40,
        height = 30,
        side = 'right',
        auto_resize = false,
        mappings = {
            custom_only = false,
            list = {}
        }
    },
    git = {enable = true, ignore = true},
    diagnostics = {
        enable = true,
		show_on_dirs = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    }
}

vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_git_hl = 1

vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
