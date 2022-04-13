local gl = require("galaxyline")
local condition = require('galaxyline.condition')
-- local diagnostic = require('galaxyline.provider_diagnostic')
local diagnostic = require('galaxyline.providers.diagnostic')
local fileinfo = require('galaxyline.providers.fileinfo')
local vcs = require('galaxyline.providers.vcs')
-- local icons = require("nvim-nonicons")

local gls = gl.section
gl.short_line_list = {
    'nerdtree', 'vista', 'dbui', 'packer', 'undotree', 'startify', 'NvimTree',
    'VimspectorPrompt', "Outline", "nofile"
}

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
local buffer_not_empty = function() return condition.buffer_not_empty end

local checkwidth = function()
    return condition.hide_in_width and buffer_not_empty()
end

local has_diagnostic_error = function()
    return diagnostic.get_diagnostic_error() ~= nil and
               diagnostic.get_diagnostic_error() ~= ''
end

local has_diagnostic_warn = function()
    return diagnostic.get_diagnostic_warn() ~= nil and
               diagnostic.get_diagnostic_warn() ~= ''
end

local has_diagnostic_info = function()
    return diagnostic.get_diagnostic_info() ~= nil and
               diagnostic.get_diagnostic_info() ~= ''
end

local mode_byte_map = {
    [110] = {'NORMAL', 'vim-normal-mode', colors.cyan},
    [105] = {'INSERT', 'vim-insert-mode', colors.green},
    [99] = {'COMMAND', 'vim-command-mode', colors.orange},
    [116] = {'TERMINAL', 'vim-terminal-mode', colors.green},
    [118] = {'VISUAL', 'vim-visual-mode', colors.magenta},
    [22] = {'V-BLOCK', 'vim-visual-mode', colors.magenta},
    [86] = {'V-LINE', 'vim-visual-mode', colors.magenta},
    [82] = {'REPLACE', 'vim-replace-mode', colors.red},
    [115] = {'SELECT', 'vim-select-mode', colors.magenta},
    [83] = {'S-LINE', 'vim-select-mode', colors.magenta}
}

local function mode_label()
    return mode_byte_map[vim.fn.mode():byte()][1] or 'N/A'
end
-- local function mode_icon() return icons.get(mode_byte_map[vim.fn.mode():byte()][2]) or '' end
local function mode_hl()
    return mode_byte_map[vim.fn.mode():byte()][3] or colors.bg
end

local function highlight_fg(group, fg, gui)
    local cmd = string.format('highlight %s guifg=%s', group, fg)
    if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
    vim.cmd(cmd)
end

local left = 1
-- Left side
gls.left[left] = {
    FirstElement = {
        provider = function() return '▋' end,
        highlight = {colors.cyan, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    ViMode = {
        provider = function()
            local modehl = mode_hl()
            highlight_fg('GalaxyViMode', modehl, 'bold')
            return string.format(' %s ', mode_label())
        end,
        highlight = {colors.bg, colors.bg},
        separator = "  ",
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    FileName = {
        provider = {
            function()
                local fname = fileinfo.get_current_file_name(' ✎', ' ')
                if (condition.check_git_workspace()) and checkwidth() then
                    local git_dir = vcs.get_git_dir(vim.fn.expand("%:p"))
                    local current_dir = vim.fn.expand("%:p:h")
                    if git_dir == current_dir .. "/.git" or git_dir == nil then
                        return fname
                    end
                    local get_path_from_git_root = current_dir:sub(#git_dir - 3)
                    return get_path_from_git_root .. "/" ..
                               string.gsub(fname, "%s+", "")
                end
                return fname
            end
        },
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.section_bg},
        separator = ' | ',
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    FileSize = {
        provider = 'FileSize',
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.section_bg},
        separator = " ",
        separator_highlight = {colors.section_bg, colors.bg}
    }
}

left = left + 1
gls.left[left] = {
    GitIcon = {
        condition = condition.check_git_workspace,
        provider = function() return '  ' end,
        highlight = {colors.red, colors.bg}
    }
}

left = left + 1
gls.left[left] = {
    GitBranch = {
        highlight = {colors.fg, colors.bg},
        separator = "",
        provider = function()
            local branch = vcs.get_git_branch()
            if (branch == nil) then branch = " ☃️  I'm free" end
            return branch .. ' '
        end
    }
}

--left = left + 1
--gls.left[left] = {
--    GitBranch = {
--        provider = 'GitBranch',
--        condition = condition.check_git_workspace,
--        separator = " ",
--        highlight = {colors.fg, colors.bg}
--    }
--}

left = left + 1
gls.left[left] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = checkwidth,
        icon = ' ',
        highlight = {colors.green, colors.bg}
    }
}

left = left + 1
gls.left[left] = {
    DiffModified = {
        provider = 'DiffModified',
        condition = checkwidth,
        icon = ' ',
        highlight = {colors.orange, colors.bg}
    }
}

left = left + 1
gls.left[left] = {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = checkwidth,
        icon = ' ',
        highlight = {colors.red, colors.bg}
    }
}

left = left + 1
gls.left[left] = {
    RightEnd = {
        provider = function() return '  ' end,
        condition = buffer_not_empty,
        highlight = {colors.bg, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.red, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    SpaceDiagnosticWarn = {
        provider = function()
            if not has_diagnostic_warn() then return end
            return ' '
        end,
        highlight = {colors.section_bg, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        highlight = {colors.orange, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    SpaceDiagnosticInfo = {
        provider = function()
            if not has_diagnostic_info() then return end
            return ' '
        end,
        highlight = {colors.section_bg, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '  ',
        highlight = {colors.blue, colors.section_bg}
    }
}

left = left + 1
gls.left[left] = {
    DiagnosticActive = {
        provider = function()
            if not has_diagnostic_error() and not has_diagnostic_warn() and
                not has_diagnostic_info() then return ' ✓ ' end
            return
        end,
        highlight = {colors.green, colors.section_bg},
        separator = ' ',
        separator_highlight = {colors.section_bg, colors.bg}
    }
}

local right = 1
-- Right side
gls.right[right] = {
    FileIcon = {
        provider = 'FileIcon',
        condition = buffer_not_empty,
        highlight = {
            -- require('galaxyline.provider_fileinfo').get_file_icon_color,
            require('galaxyline.providers.fileinfo').get_file_icon_color,
            colors.section_bg
        },
        separator = ' ',
        separator_highlight = {colors.section_bg, colors.bg}
    }
}

right = right + 1
gls.right[right] = {
    fileformat = {
        provider = function() return vim.bo.filetype end,
        highlight = {colors.fg, colors.section_bg}
    }
}

right = right + 1
gls.right[right] = {
    LspClientIcon = {
        provider = function() return ' ' end,
        highlight = {colors.red, colors.section_bg},
        separator = ' | ',
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

right = right + 1
gls.right[right] = {
    GetLspClient = {
        provider = {'GetLspClient'},
        highlight = {colors.fg, colors.section_bg},
    }
}

right = right + 1
gls.right[right] = {
    LineInfo = {
        provider = 'LineColumn',
        highlight = {colors.fg, colors.section_bg},
        separator = ' | ',
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

right = right + 1
gls.right[right] = {
    LinePercent = {
        provider = 'LinePercent',
        highlight = {colors.fg, colors.section_bg},
        separator = ' | ',
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

right = right + 1
gls.right[right] = {
    Heart = {
        provider = function() return ' ' end,
        highlight = {colors.red, colors.section_bg},
        separator = ' | ',
        separator_highlight = {colors.bg, colors.section_bg}
    }
}

local short_left = 1

-- Short status line
gls.short_line_left[short_left] = {
    BufferType = {
        provider = 'FileTypeName',
        highlight = {colors.fg, colors.section_bg},
        separator = ' ',
        separator_highlight = {colors.section_bg, colors.bg}
    }
}

short_left = short_left + 1
gls.short_line_right[short_left] = {
    BufferIcon = {
        provider = 'BufferIcon',
        highlight = {colors.yellow, colors.section_bg},
        separator = ' ',
        separator_highlight = {colors.section_bg, colors.bg}
    }
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
