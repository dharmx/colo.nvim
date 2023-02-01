---@module "colo.groups.base.diff"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    DiffAdd = { foreground = col.green, reverse = true },
    DiffChange = { foreground = col.magenta, reverse = true },
    DiffDelete = { foreground = col.red, reverse = true },
    DiffText = { foreground = col.blue, reverse = true },
  }
end

return M

---vim:filetype=lua
