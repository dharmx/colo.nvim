---@module "colo.groups.integration.figlet"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    FidgetTitle = { foreground = c.bright_green },
    FidgetTask = { foreground = c.black:lighten(5) },
  }
end

return M

---vim:filetype=lua
