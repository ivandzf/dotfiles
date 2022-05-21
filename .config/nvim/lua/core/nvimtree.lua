vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 0
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = { git = 1, folders = 1, files = 1 }
vim.g.nvim_tree_special_files = {'README.md', 'Makefile', 'MAKEFILE', 'go.mod', 'go.sum'}

vim.api.nvim_set_keymap("n", "<Leader>t", ":NvimTreeToggle<CR>",
                        {noremap = true, silent = true})

vim.cmd [[ autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif ]]

require("nvim-tree.events").on_nvim_tree_ready(function()
    vim.cmd("NvimTreeRefresh")
end)

require'nvim-tree'.setup {
    disable_netrw = false,
    hijack_netrw = true,
    open_on_setup = false,
    ignore_ft_on_setup = {"startify", "vista", "undotree"},
    -- auto_close = true,
    open_on_tab = false,
    -- update_to_buf_dir = {enable = true, auto_open = true},
    hijack_cursor = false,
    update_cwd = false,
    update_focused_file = {enable = false, update_cwd = false, ignore_list = {}},
    system_open = {cmd = nil, args = {}},
    renderer = {
        indent_markers = {
            enable = true,
            icons = {corner = "└ ", edge = "│ ", none = "  "}
        },
        icons = {webdev_colors = true, git_placement = "before"}
    },
    filters = {
        dotfiles = true,
        custom = {"^.git$", "^node_modules$", "^.cache$", "^vendor$"},
        --exclude = {".github/workflows"}
    },
    view = {
        width = 40,
        height = 30,
        side = 'right',
        mappings = {custom_only = false, list = {}},
		hide_root_folder = false,
    },
    git = {enable = true, ignore = true},
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    }
}


