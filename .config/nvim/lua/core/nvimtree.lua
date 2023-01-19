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
            enable = false,
            icons = {corner = "└ ", edge = "│ ", none = "  "}
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
            show = {git = true, folder = true, file = true}
        },
        add_trailing = false,
        highlight_git = true,
        highlight_opened_files = "none",
		group_empty = true,
		special_files = { 'README.md', 'Makefile', 'MAKEFILE', 'go.mod', 'package.json', 'Dockerfile', 'service.yaml' },
    },
    filters = {
        dotfiles = true,
        custom = {"^.git$", "^node_modules$", "^.cache$", "^vendor$"}
        -- exclude = {".github/workflows"}
    },
    view = {
        width = 40,
--        height = 30,
        side = 'left',
        mappings = {custom_only = false, list = {}},
        hide_root_folder = false
    },
    git = {enable = true, ignore = true},
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    }
}

