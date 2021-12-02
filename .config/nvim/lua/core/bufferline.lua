require'bufferline'.setup {
    options = {
        view = "default",
        numbers = "none",
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thin",
        always_show_bufferline = false
    },
    -- highlights = {fill = {guibg = '#222024'}}
    highlights = {fill = {guibg = '#17181d'}},
}

vim.api.nvim_set_keymap("n", "<Leader>.", ":BufferLineCycleNext<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>,", ":BufferLineCyclePrev<CR>",
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>bn", ":BufferLineMoveNext<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>bp", ":BufferLineMovePrev<CR>",
                        {noremap = true, silent = true})

-- vim.api.nvim_set_keymap("n", "<Leader>be", ":BufferLineSortByExtension<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<Leader>bd", ":BufferLineSortByDirectory<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Leader>bg", ":BufferLinePick<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>bq", ":BufferLinePickClose<CR>",
                        {noremap = true, silent = true})
