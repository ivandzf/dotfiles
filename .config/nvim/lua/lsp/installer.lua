local lsp_installer_servers = require 'nvim-lsp-installer.servers'
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

local servers = {
    'pyright', 'gopls', 'rust_analyzer', 'tsserver', 'clangd', 'dockerls',
    'html', 'cssls', 'jsonls', 'yamlls', 'flow', 'ocamllsp', 'ltex'
}

for _, lsp in ipairs(servers) do
    local ok, l = lsp_installer_servers.get_server(lsp)
    if ok then if not l:is_installed() then l:install() end end
end
