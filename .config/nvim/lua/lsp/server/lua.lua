local nvim_lsp = require('lspconfig')
require('neodev').setup()

local M = {
    setup = function(on_attach, capabilities)
        nvim_lsp['sumneko_lua'].setup({
            settings = {Lua = {completion = {callSnippet = "Replace"}}},
			on_attach = on_attach,
			capabilities = capabilites,
        })
    end
}

return M
