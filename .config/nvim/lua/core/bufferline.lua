require'bufferline'.setup {
    options = {
        max_name_length = 18,
        max_prefix_length = 10, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        view = "default",
        numbers = function(opts)
            return string.format('%s%s', opts.ordinal,
                                 opts.lower(opts.id))
        end,
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or
                                (e == "warning" and " " or "")
                s = s .. n .. sym
            end
            return s
        end,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thin",
        always_show_bufferline = false,
        offsets = {{filetype = "NvimTree", text = "Tree"}}
    },
    highlights = {fill = {bg = '#20212b'}}
    -- highlights = {fill = {guibg = '#17181d'}}
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
