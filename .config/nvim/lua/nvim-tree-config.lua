local tree_cb = require'nvim-tree.config'.nvim_tree_callback



vim.g.nvim_tree_bindings = {
  -- default mappings
  ["<CR>"]           = tree_cb("edit"),
  ["o"]              = tree_cb("edit"),
  ["<C-]>"]          = tree_cb("cd"),
  ["s"]              = tree_cb("vsplit"),
  ["h"]              = tree_cb("split"),
  ["<C-t>"]          = tree_cb("tabnew"),
  ["<BS>"]           = tree_cb("close_node"),
  ["<S-CR>"]         = tree_cb("close_node"),
  ["<Tab>"]          = tree_cb("preview"),
  ["I"]              = tree_cb("toggle_ignored"),
  ["H"]              = tree_cb("toggle_dotfiles"),
  ["R"]              = tree_cb("refresh"),
  ["a"]              = tree_cb("create"),
  ["d"]              = tree_cb("remove"),
  ["r"]              = tree_cb("rename"),
  ["<C-r>"]          = tree_cb("full_rename"),
  ["x"]              = tree_cb("cut"),
  ["c"]              = tree_cb("copy"),
  ["p"]              = tree_cb("paste"),
  ["[c"]             = tree_cb("prev_git_item"),
  ["]c"]             = tree_cb("next_git_item"),
  ["<C-[>"]          = tree_cb("dir_up"),
  ["q"]              = tree_cb("close"),
}
