local nvim_lsp = require('lspconfig')

local M = {
	setup = function(on_attach, capabilities)
		nvim_lsp['yamlls'].setup({
			completion = true,
			on_attach = on_attach,
			capabilities = capabilities,
			schemas = { kubernetes = "globPattern" },
		})
	end
}

return M
