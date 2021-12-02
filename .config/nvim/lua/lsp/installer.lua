local lsp_installer_servers = require 'nvim-lsp-installer.servers'

local servers = {
    'pyright', 'gopls', 'rust_analyzer', 'tsserver', 'clangd', 'dockerls',
    'html', 'cssls', 'jsonls', 'yamlls', 'flow', 'ocamllsp'
}
for _, lsp in ipairs(servers) do
    local ok, l = lsp_installer_servers.get_server(lsp)
    if ok then if not l:is_installed() then l:install() end end
end
