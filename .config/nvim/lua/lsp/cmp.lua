-- local luasnip = require('luasnip')
local lspkind = require('lspkind')
local types = require('cmp.types')

local has_words_before = function()
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
        return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
               vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col,
                                                                          col)
                   :match("%s") == nil
end

local feedkey = function(key)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true),
                          "n", true)
end

local has_words_before_v2 = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
               vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col,
                                                                          col)
                   :match("%s") == nil
end

local feedkey_v2 = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true),
                          mode, true)
end

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    completion = {completeopt = 'menu,menuone,noselect'},
    experimental = {native_menu = false, ghost_text = true},
    --  snippet = {
    --    expand = function(args)
    --      luasnip.lsp_expand(args.body)
    --    end,
    --  },
    snippet = {expand = function(args) vim.fn["vsnip#anonymous"](args.body) end},
    preselect = types.cmp.PreselectMode.None,
    formatting = {
        format = function(entry, vim_item)
            local temp_kind = vim_item.kind
            vim_item.kind = lspkind.presets.default[vim_item.kind]
            if entry.completion_item.detail ~= nil then
                vim_item.kind = vim_item.kind .. " " ..
                                    entry.completion_item.detail
            else
                vim_item.kind = vim_item.kind .. " " .. temp_kind
            end
            return vim_item
        end
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif vim.fn["vsnip#available"]() == 1 then
                feedkey_v2("<Plug>(vsnip-expand-or-jump)", "")
            elseif has_words_before_v2() then
                cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                feedkey_v2("<Plug>(vsnip-jump-prev)", "")
            end
        end, {"i", "s"})
        --	["<Tab>"] = function(fallback)
        --	  if cmp.visible() then
        --		cmp.select_next_item()
        --	  else
        --		fallback()
        --	  end
        --    end,
        --	["<S-Tab>"] = function(fallback)
        --	  if cmp.visible() then
        --		cmp.select_prev_item()
        --	  else
        --		fallback()
        --	  end
        --    end
        --	 ["<Tab>"] = cmp.mapping(function(fallback)
        --      if vim.fn.pumvisible() == 1 then
        --        feedkey("<C-n>")
        --      elseif luasnip.expand_or_jumpable() then
        --        luasnip.expand_or_jump()
        --      elseif has_words_before() then
        --        cmp.complete()
        --      else
        --        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        --      end
        --    end, { "i", "s" }),
        --    ["<S-Tab>"] = cmp.mapping(function(fallback)
        --      if vim.fn.pumvisible() == 1 then
        --        feedkey("<C-p>")
        --      elseif luasnip.jumpable(-1) then
        --        luasnip.jump(-1)
        --      else
        --        fallback()
        --      end
        --    end, { "i", "s" }),
    },
    sources = {
        {name = 'nvim_lsp'}, {name = 'vsnip'}
        --	{ name = 'buffer' },
        --	{ name = 'luasnip' },
    }
}
