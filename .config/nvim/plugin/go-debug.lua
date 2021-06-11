local open = io.open
local json = require("json")

local function read_file(path)
    local file = open(path, "rb") -- r read mode and b binary mode
    if not file then return nil end
    local content = file:read "*a" -- *a or *all reads the whole file
    file:close()
    return content
end

function _G.runGoDebugWithEnvar()
  local fileContent = read_file("config.local.json");
  local decoded = json.decode(fileContent)
  for k, v in pairs(decoded.id) do
    if k == "configs" then
      for i, j in pairs(v) do 
        if j ~= "" then
          vim.api.nvim_command(string.format('let $%s="%s"', i, j))
        end
      end
    elseif k == "service_dependencies" then
      for i, j in pairs(v) do 
        if j ~= "" then
          vim.api.nvim_command(string.format('let $%s="%s"', i, j))
        end
      end
    elseif k == "database_dependencies" then
      for i, j in pairs(v) do 
        if j ~= "" then
          vim.api.nvim_command(string.format('let $%s="%s"', i, j))
        end
      end
    end
  end

  vim.api.nvim_command("GoDebugStart")
end

vim.api.nvim_set_keymap('n', '<C-n>', 'v:lua.runGoDebugWithEnvar()', {expr = true, noremap = true})
