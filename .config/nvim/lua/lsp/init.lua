require("lsp.installer")
require("lsp.cmp")
require("lsp.saga")
require("lsp.autotag")
require("lsp.copilot")

vim.fn.sign_define("DiagnosticSignError", {
    texthl = "DiagnosticSignError",
    text = "🔥",
    numhl = "DiagnosticSignError"
})
vim.fn.sign_define("DiagnosticSignWarn", {
    texthl = "DiagnosticSignWarn",
    text = "⚠️ ",
    numhl = "DiagnosticSignWarn"
})
vim.fn.sign_define("DiagnosticSignHint", {
    texthl = "DiagnosticSignHint",
    text = "💡",
    numhl = "DiagnosticSignHint"
})
vim.fn.sign_define("DiagnosticSignInformation", {
    texthl = "DiagnosticSignInformation",
    text = "☃️ ",
    numhl = "DiagnosticSignInformation"
})

-- Set Default Prefix.
-- Note: You can set a prefix per lsp server in the lv-globals.lua file
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {prefix = "🧙", spacing = 1},
        signs = true,
        underline = true,
        source = "always"
    })

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
    require('lsp_signature').on_attach({
        hint_prefix = '🧙 ',
        handler_opts = {
            border = "single" -- double, rounded, single, shadow, none
        }
    })
end

-- Mappings
local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', 'gK', ':Lspsaga hover_doc<CR>',
                        {noremap = true, silent = true})
-- See `:help vim.lsp.*` for documentation on any of the below functions
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>',
                        opts)
vim.api
    .nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- buf_set_keymap('n', 'gK', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gK', ':Lspsaga hover_doc<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',
                        opts)
-- vim.api.nvim_set_keymap('n', 'gi', ':Lspsaga implement<CR>',
-- buf_set_keymap('n', '<leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>k', ':Lspsaga signature_help<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wa',
                        '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>wr',
                        '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>',
                        opts)
vim.api.nvim_set_keymap('n', '<leader>wl',
                        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                        opts)
-- buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>D', ':Lspsaga preview_definition<CR>',
                        opts)
-- buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>rn', ':Lspsaga rename<CR>', opts)
-- buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<CR>', opts)
-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', ':Lspsaga lsp_finder<CR>', opts)
-- buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>e', ':Lspsaga show_line_diagnostics<CR>',
                        opts)
-- buf_set_keymap('n', '[e', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- buf_set_keymap('n', ']e', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '[e', ':Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', ']e', ':Lspsaga diagnostic_jump_prev<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q',
                        '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', opts)

for _, server in ipairs({
    'go', 'python', 'typescript', 'docker', 'html', 'css', 'json', 'yaml',
    'flow', 'ocaml', 'clang', 'rust', 'lua', 'ltex'
}) do require('lsp.server.' .. server).setup(on_attach, capabilities) end

