local nvim_lsp = require('lspconfig')
local lua_dev = require('lua-dev')

local sumneko_root_path = "/Users/ivan/Documents/github/lua-language-server"
local sumneko_binary =
    "/Users/ivan/Documents/github/lua-language-server/bin/macOS/lua-language-server"

local M = {
    setup = function(on_attach, capabilities)
        local luadev = lua_dev.setup({
            library = {vimruntime = true, types = true, plugins = true},
            lspconfig = {
                capabilities = capabilities,
                on_attach = on_attach,
                cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                            -- Setup your lua path
                            path = vim.split(package.path, ';')
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = {'vim'}
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = {
                                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                                [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                            }
                        }
                    }
                }
            }
        })

        nvim_lsp['sumneko_lua'].setup(luadev)
    end
}

return M
