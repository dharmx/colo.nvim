---@module "colo.generate"
---@author dharmx
---@license GPL-3.0

local Path = require("plenary.path")
local M = {}

local util = require("colo.util")
local A = vim.api

local FORMAT = [[
---vim:filetype=lua
---${name}
---${background}

local function HL(name, val) vim.api.nvim_set_hl(0, name, val) end

${colors}
]]

function M.raw()
  local hl_names = vim.fn.getcompletion("", "highlight", "Default")
  local hl_list = {}
  for _, name in ipairs(hl_names) do
    local hl = A.nvim_get_hl_by_name(name, true)
    hl[true] = nil
    hl[false] = nil
    if #vim.tbl_keys(hl) ~= 0 then
      if hl.foreground then hl.foreground = string.format("#%06X", hl.foreground) end
      if hl.background then hl.background = string.format("#%06X", hl.background) end
      if hl.special then hl.special = string.format("#%06X", hl.special) end
      table.insert(hl_list, string.format([[HL(%q, %s)]], name, vim.inspect(hl, { newline = "" })))
    end
  end

  ---@type Path
  local write_path = Path:new(util.plugin.path() .. "/colors")
  if not write_path:exists() then write_path:mkdir({ parents = true, exists_ok = true }) end
  FORMAT = (FORMAT:gsub("%${name}", vim.g.colors_name))
  FORMAT = (FORMAT:gsub("%${background}", vim.o.background))
  FORMAT = (FORMAT:gsub("%${colors}", table.concat(hl_list, "\n")))

  local file = io.open(write_path.filename .. "/" .. vim.g.colors_name .. ".lua", "w")
  if file then
    file:write(FORMAT)
    file:close()
  end
end

return M

---vim:filetype=lua
