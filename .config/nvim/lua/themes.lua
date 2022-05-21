-- Github
--require("github-theme").setup({
--  theme_style = "dark",
--  function_style = "italic",
--  sidebars = {"qf", "terminal", "packer"},
-- })

-- navarasu onedark
--require('onedark').setup {
--  options = {
--    theme = 'onedark'
--    -- ... your lualine config
--  }
--}

-- Onedark
--vim.g.onedark_darker_diagnostics = false -- By default it is true
--require('onedark').setup()

-- oceanic
--vim.cmd [[colorscheme OceanicNext]]
--vim.g.oceanic_next_terminal_italic = 1
--vim.g.oceanic_next_terminal_bold = 1

-- OneNord
--vim.cmd [[colorscheme onenord]]
--require('onenord').setup()

-- sonokai
vim.g.sonokai_style = 'andromeda'
vim.g.sonokai_enable_italic = 0
vim.cmd [[colorscheme sonokai]]

-- vim.o.background = "dark"
-- vim.cmd [[silent! colorscheme onehalflight]]

-- edge
--vim.g.edge_style = 'neon'
--vim.g.edge_enable_italic = 1
--vim.cmd [[silent! colorscheme edge]]

-- neon
--vim.cmd[[colorscheme neon]]
--vim.g.neon_style = "doom"
--vim.g.neon_italic_keyword = true
--vim.g.neon_italic_function = true
--vim.g.neon_transparent = true

-- omni
-- vim.cmd [[colorscheme omni]]

-- falcon
--vim.cmd [[colorscheme falcon]]

-- github-colors
--vim.cmd [[colorscheme github-colors]]

-- kanagawa
-- Default options:
--require('kanagawa').setup({
--    undercurl = true,           -- enable undercurls
--    commentStyle = "italic",
--    functionStyle = "NONE",
--    keywordStyle = "italic",
--    statementStyle = "bold",
--    typeStyle = "NONE",
--    variablebuiltinStyle = "italic",
--    specialReturn = true,       -- special highlight for the return keyword
--    specialException = true,    -- special highlight for exception handling keywords
--    transparent = false,        -- do not set background color
--    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--    globalStatus = false,       -- adjust window separators highlight for laststatus=3
--    colors = {},
--    overrides = {},
--})
--
---- setup must be called before loading
--vim.cmd("colorscheme kanagawa")

-- tokyodark
--vim.g.tokyodark_transparent_background = false
--vim.g.tokyodark_enable_italic_comment = true
--vim.g.tokyodark_enable_italic = true
--vim.cmd("colorscheme tokyodark")

-- onedark pro
--local onedarkpro = require("onedarkpro")
--onedarkpro.setup({
--  theme = function()
--    if vim.o.background == "dark" then
--      return "onedark"
--    else
--      return "onelight"
--    end
--  end,
--  options = {
--      bold = true, -- Use the themes opinionated bold styles?
--      italic = true, -- Use the themes opinionated italic styles?
--      underline = true, -- Use the themes opinionated underline styles?
--      undercurl = false, -- Use the themes opinionated undercurl styles?
--      cursorline = true, -- Use cursorline highlighting?
--      transparency = true, -- Use a transparent background?
--      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
--      window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
--  }
--})
--onedarkpro.load()
