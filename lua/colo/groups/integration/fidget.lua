---@module "colo.groups.integration.figlet"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    FidgetTitle = { foreground = col.bright_green },
    FidgetTask = { foreground = col.black:lighten(5) },
  }
end

return M

---vim:filetype=lua
