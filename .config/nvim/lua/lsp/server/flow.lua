local nvim_lsp = require('lspconfig')

local M = {
	setup = function(on_attach, capabilities)
		nvim_lsp['flow'].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end
}

return M
