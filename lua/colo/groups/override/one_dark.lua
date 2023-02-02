---@module "colo.groups.override.one_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    PmenuSel = { background = c.blue, foreground = c.bright_black },
  }
end

return M

-- vim:filetype=lua
