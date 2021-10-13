local saga = require 'lspsaga'
saga.init_lsp_saga {
	finder_definition_icon = '🔮 ',
	finder_reference_icon = '🔮 ',
	max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
	finder_action_keys = {
	  open = '<CR>', vsplit = 'c',split = 'x',quit = 'q',scroll_down = '<C-j>', scroll_up = '<C-k>' -- quit can be a table
	},
	code_action_keys = {
	  quit = 'q',exec = '<CR>'
	},
	rename_action_keys = {
	  quit = '<C-c>',exec = '<CR>'  -- quit can be a table
	},
    definition_preview_icon = "☃️ ",
	dianostic_header_icon = "",
	border_style = "single",
	rename_prompt_prefix = '➤',
}

--vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", {noremap = true})
--vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", {noremap = true})
