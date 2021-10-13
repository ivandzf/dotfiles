require'navigator'.setup({
  default_mapping = true,
  keymaps = {
	{key = "gr", func = "references()"},
  	{mode = "i", key = "<M-k>", func = "signature_help()"},
  	{key = "<leader>k", func = "signature_help()"},
  	{key = "g0", func = "document_symbol()"},
  	{key = "gW", func = "workspace_symbol()"},
  	{key = "gd", func = "definition()"},
  	{key = "gD", func = "declaration({ border = 'rounded', max_width = 80 })"},
  	{key = "gp", func = "require('navigator.definition').definition_preview()"},
--  	{key = "gT", func = "require('navigator.treesitter').buf_ts()"},
--  	{key = "<Leader>gT", func = "require('navigator.treesitter').bufs_ts()"},
  	{key = "gK", func = "hover({ popup_opts = { border = single, max_width = 80 }})"},
  	{key = "<Leader>ca", mode = "n", func = "require('navigator.codeAction').code_action()"},
  	{key = "<Leader>cA", mode = "v", func = "range_code_action()"},
--  	{key = "<Leader>re", func = "rename()"},
  	{key = "<Leader>rn", func = "require('navigator.rename').rename()"},
  	{key = "<Leader>gi", func = "incoming_calls()"},
  	{key = "<Leader>go", func = "outgoing_calls()"},
  	{key = "gi", func = "implementation()"},
  	{key = "<Space>D", func = "type_definition()"},
  	{key = "gL", func = "require('navigator.diagnostics').show_line_diagnostics()"},
  	{key = "gG", func = "require('navigator.diagnostics').show_diagnostic()"},
  	{key = "]d", func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})"},
  	{key = "[d", func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})"},
  	{key = "]r", func = "require('navigator.treesitter').goto_next_usage()"},
  	{key = "[r", func = "require('navigator.treesitter').goto_previous_usage()"},
--		{key = "<C-LeftMouse>", func = "definition()"},
--  	{key = "g<LeftMouse>", func = "implementation()"},
  	{key = "<Leader>k", func = "require('navigator.dochighlight').hi_symbol()"},
  	{key = '<Space>wa', func = 'add_workspace_folder()'},
  	{key = '<Space>wr', func = 'remove_workspace_folder()'},
  	{key = '<Space>ff', func = 'formatting()', mode='n'},
  	{key = '<Space>ff', func = 'range_formatting()', mode='v'},
  	{key = '<Space>wl', func = 'print(vim.inspect(vim.lsp.buf.list_workspace_folders()))'},
  	{key = "<Space>la", mode = "n", func = "require('navigator.codelens').run_action()"},
  }, -- e.g keymaps={{key = "GR", func = "references()"}, } this replace gr default mapping
  icons = {
    icons = true, -- set to false to use system default ( if you using a terminal does not have nerd/icon)
    -- Code action
    code_action_icon = "",
    -- code lens
    code_lens_action_icon = "👓",
    -- Diagnostics
    diagnostic_head = ' ',
    diagnostic_err = "🔥",
    diagnostic_warn = "⚠️",
    diagnostic_info = [[💡]],
    diagnostic_hint = [[❕]],

    diagnostic_head_severity_1 = "☄️",
    diagnostic_head_severity_2 = "🦠",
    diagnostic_head_severity_3 = "👎",
    diagnostic_head_description = " ",
    diagnostic_virtual_text = "🧙",
    diagnostic_file = "🚑",
    -- Values
    value_changed = "📝",
    value_definition = "🧙",
  }
})
