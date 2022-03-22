require("indent_blankline").setup{
    --    char = "|",
    buftype_exclude = {
        "terminal", "help", "vista", "undotree", "VimspectorPrompt", "Outline", "nerdtree", "packer", "nofile"
    },
	filetype_exclude = {"startify"},
	use_treesitter = false
}

