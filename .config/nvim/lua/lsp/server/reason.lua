local nvim_lsp = require('lspconfig')

local rescript_root_path = "/Users/ivan/Documents/github/rescript-vscode"
local reason_ls_path =
    "/Users/ivan/Documents/github/reason-language-server/bin/reason-language-server"

local M = {
    setup = function(on_attach, capabilities)
        nvim_lsp['rescriptls'].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {
                'node', rescript_root_path .. '/server/out/server.js', '--stdio'
            }
        })

        nvim_lsp['reason_ls'].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            cmd = {reason_ls_path}
        })
    end
}

return M
