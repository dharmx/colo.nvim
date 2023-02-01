---@module "colo.groups.override.one_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    PmenuSel = { background = col.blue, foreground = col.bright_black },
  }
end

return M

---vim:filetype=lua
