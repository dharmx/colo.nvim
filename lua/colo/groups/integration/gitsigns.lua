---@module "colo.groups.integration.gitsigns"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    GitSignsChange = { foreground = c.bright_black:brighten(2):lighten(2) },
    GitSignsChangeNr = { foreground = c.bright_magenta },
    GitSignsChangeLn = { foreground = c.magenta:brighten(3) },
    GitSignsAdd = { foreground = c.blue },
    GitSignsAddNr = { foreground = c.bright_blue },
    GitSignsAddLn = { foreground = c.blue },
    GitSignsDeleteLn = { foreground = c.red },
    GitSignsDelete = { foreground = c.bright_red },
    GitSignsDeleteNr = { foreground = c.red:brighten(2) },
  }
end

return M

---vim:filetype=lua
