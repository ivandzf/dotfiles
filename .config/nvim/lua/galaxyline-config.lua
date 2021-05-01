local gl = require("galaxyline")
local condition = require('galaxyline.condition')
local diagnostic = require('galaxyline.provider_diagnostic')

local gls = gl.section
gl.short_line_list = {'nerdtree', 'vista', 'dbui', 'packer', 'undotree', 'startify', 'NvimTree', 'VimspectorPrompt'}

local colors = {
  bg = '#282a36',
  fg = '#f8f8f2',
  section_bg = '#38393f',
  yellow = '#f1fa8c',
  cyan = '#8be9fd',
  green = '#50fa7b',
  orange = '#ffb86c',
  magenta = '#ff79c6',
  blue = '#8be9fd',
  red = '#ff5555'
}

-- Local helper functions
local buffer_not_empty = function()
  return condition.buffer_not_empty
end

local checkwidth = function()
  return condition.hide_in_width and buffer_not_empty()
end

local has_diagnostic_error = function()
  return diagnostic.get_diagnostic_error() ~= nil and diagnostic.get_diagnostic_error() ~= ''
end

local has_diagnostic_warn = function()
  return diagnostic.get_diagnostic_warn() ~= nil and diagnostic.get_diagnostic_warn() ~= ''
end

local has_diagnostic_info = function()
  return diagnostic.get_diagnostic_info() ~= nil and diagnostic.get_diagnostic_info() ~= ''
end

local mode_byte_map = {
  [110] = {'NORMAL', colors.cyan},
  [105] = {'INSERT', colors.green},
  [99] = {'COMMAND', colors.orange},
  [116] = {'TERMINAL', colors.green},
  [118] = {'VISUAL', colors.magenta},
  [22] = {'V-BLOCK', colors.magenta},
  [86] = {'V-LINE', colors.magenta},
  [82] = {'REPLACE', colors.red},
  [115] = {'SELECT', colors.magenta},
  [83] = {'S-LINE', colors.magenta},
} 

local function mode_label() return mode_byte_map[vim.fn.mode():byte()][1] or 'N/A' end
local function mode_hl() return mode_byte_map[vim.fn.mode():byte()][2] or colors.bg end

local function highlight_fg(group, fg, gui)
  local cmd = string.format('highlight %s guifg=%s', group, fg)
  if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
  vim.cmd(cmd)
end

-- Left side
gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = { colors.cyan, colors.section_bg }
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local modehl = mode_hl()
      highlight_fg('GalaxyViMode', modehl, 'bold')
      return string.format('  %s ', mode_label())
    end,
    highlight = { colors.bg, colors.bg },
    separator = "  ",
    separator_highlight = {colors.bg, colors.section_bg},
  },
}
gls.left[3] = {
  FileName = {
    provider = { 'FileName', 'FileSize' },
    condition = buffer_not_empty,
    highlight = { colors.fg, colors.section_bg },
    separator = " ",
    separator_highlight = {colors.section_bg, colors.bg},
  }
}
gls.left[4] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {colors.red,colors.bg},
  }
}
gls.left[5] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.bg},
  }
}
gls.left[6] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.green, colors.bg },
  }
}
gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.orange, colors.bg },
  }
}
gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = { colors.red,colors.bg },
  }
}
gls.left[9] = {
  RightEnd = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {colors.bg,colors.section_bg}
  }
}
gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.section_bg}
  }
}
gls.left[11] = {
  SpaceDiagnosticWarn = {
   provider = function() 
      if not has_diagnostic_warn() then return end
      return ' '
    end,
    highlight = {colors.section_bg,colors.section_bg},
  }
}
gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.orange,colors.section_bg},
  }
}
gls.left[13] = {
  SpaceDiagnosticInfo = {
    provider = function() 
      if not has_diagnostic_info() then return end
      return ' '
    end,
    highlight = {colors.section_bg,colors.section_bg},
  }
}
gls.left[14] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.section_bg},
  }
}
gls.left[16] = {
  DiagnosticActive = {
    provider = function()
      if not has_diagnostic_error() and not has_diagnostic_warn() and not has_diagnostic_info() then
        return ' ✓ '
      end
      return
    end,
    highlight = {colors.green,colors.section_bg},
    separator = ' ',
    separator_highlight = { colors.section_bg, colors.bg },
  }
}

-- Right side
gls.right[1] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.section_bg },
    separator = ' ',
    separator_highlight = { colors.section_bg,colors.bg },
  },
}
gls.right[2]= {
  FileFormat = {
    provider = function() return vim.bo.filetype end,
    highlight = { colors.fg,colors.section_bg },
  }
}
gls.right[3] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = { colors.fg, colors.section_bg },
    separator = ' | ',
    separator_highlight = { colors.bg, colors.section_bg },
  },
}
gls.right[4] = {
  LinePercent = {
    provider = 'LinePercent',
    highlight = { colors.fg, colors.section_bg },
    separator = ' | ',
    separator_highlight = { colors.bg, colors.section_bg },
  },
}
gls.right[5] = {
  Heart = {
    provider = function() return ' ' end,
    highlight = { colors.red, colors.section_bg },
    separator = ' | ',
    separator_highlight = { colors.bg, colors.section_bg },
  }
}

-- Short status line
gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    highlight = { colors.fg, colors.section_bg },
    separator = ' ',
    separator_highlight = { colors.section_bg, colors.bg },
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = { colors.yellow, colors.section_bg },
    separator = ' ',
    separator_highlight = { colors.section_bg, colors.bg },
  }
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
