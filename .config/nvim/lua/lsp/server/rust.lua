local nvim_lsp = require('lspconfig')
local rust_tools = require('rust-tools')

local rust_analyzer_setting = {
    ["rust-analyzer"] = {
        assist = {importMergeBehavior = "last", importPrefix = "by_self"},
        cargo = {
            loadOutDirsFromCheck = true,
            autoreload = true,
            allFeatures = true
        },
        procMacro = {enable = true},
        completion = {
            addCallArgumentSnippets = true,
            addCallParenthesis = true,
            postfix = {enable = true},
            autoimport = {enable = true}
        },
        diagnostics = {enable = true, enableExperimental = true},
        notifications = {cargoTomlNotFound = true},
        hoverActions = {
            enable = true,
            debug = true,
            gotoTypeDef = true,
            implementations = true,
            run = true,
            linksInHover = true
        },
        inlayHints = {
            chainingHints = true,
            parameterHints = true,
            typeHints = true
        },
        checkOnSave = {command = "clippy"},
        lens = {
            methodReferences = true,
            references = true,
            enumVariantReferences = true
        }
    }
}

local rust_tools_setting = {}

local M = {
    setup = function(on_attach, capabilities)
        nvim_lsp['rust_analyzer'].setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = rust_analyzer_setting,
        })

        rust_tools.setup(rust_tools_setting)
    end
}

return M
