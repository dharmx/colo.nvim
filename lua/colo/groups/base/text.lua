---@module "colo.groups.base.text"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    Bold = { bold = true },
    Italic = { italic = true },
    Underlined = { underline = true },
  }
end

return M

---vim:filetype=lua
