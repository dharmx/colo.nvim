---@module "colo.groups.integration.virtcolumn"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    VirtColumn = { background = col.black, foreground = col.black:brighten(0.5):lighten(2) },
  }
end

return M

---vim:filetype=lua
