---@module "colo.groups.base.diff"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    DiffAdd = { foreground = c.green, reverse = true },
    DiffChange = { foreground = c.magenta, reverse = true },
    DiffDelete = { foreground = c.red, reverse = true },
    DiffText = { foreground = c.blue, reverse = true },
  }
end

return M

---vim:filetype=lua
