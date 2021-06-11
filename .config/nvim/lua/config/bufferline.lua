require'bufferline'.setup{
  options = {
    view = "default",
    numbers = "none",
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    -- separator_style = { '|', ' ' },
    separator_style = "thick",
    always_show_bufferline = false,
  },
  highlights = {
    fill = {
      guibg = '#222024'
    },
  }
}
