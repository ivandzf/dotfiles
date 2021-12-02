require("dapui").setup({
    icons = {expanded = "▾", collapsed = "▸"},
    mappings = {
        -- Use a table to apply multiple mappings
        expand = {"<CR>", "<2-LeftMouse>"},
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r"
    },
    sidebar = {
        -- You can change the order of elements in the sidebar
        elements = {
            -- Provide as ID strings or tables with "id" and "size" keys
            {
                id = "scopes",
                size = 0.25 -- Can be float or integer > 1
            }, {id = "breakpoints", size = 0.25}, {id = "stacks", size = 0.25},
            {id = "watches", size = 00.25}
        },
        size = 40,
        position = "left" -- Can be "left", "right", "top", "bottom"
    },
    tray = {
        elements = {"repl"},
        size = 10,
        position = "bottom" -- Can be "left", "right", "top", "bottom"
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil, -- Floats will be treated as percentage of your screen.
        mappings = {close = {"q", "<Esc>"}}
    },
    windows = {indent = 1}
})
vim.api.nvim_set_keymap("n", "<Space>bq", ":lua require('dapui').toggle()<CR>",
                        {noremap = true, silent = true})

vim.fn.sign_define('DapBreakpoint',
                   {text = '🔮', texthl = '', linehl = '', numhl = ''})
vim.fn.sign_define('DapStopped',
                   {text = '👉', texthl = '', linehl = '', numhl = ''})

vim.api.nvim_set_keymap("n", "<Space>bp",
                        ":lua require'dap'.toggle_breakpoint()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Space>bc", ":lua require'dap'.continue()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Space>bo", ":lua require'dap'.step_over()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Space>bi", ":lua require'dap'.step_into()<CR>",
                        {noremap = true, silent = true})

require('dap.ext.vscode').load_launchjs()
require('dap-go').setup()
require("nvim-dap-virtual-text").setup()

