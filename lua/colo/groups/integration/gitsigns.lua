---@module "colo.groups.integration.gitsigns"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    GitSignsChange = { foreground = col.bright_black:brighten(2):lighten(2) },
    GitSignsChangeNr = { foreground = col.bright_magenta },
    GitSignsChangeLn = { foreground = col.magenta:brighten(3) },
    GitSignsAdd = { foreground = col.blue },
    GitSignsAddNr = { foreground = col.bright_blue },
    GitSignsAddLn = { foreground = col.blue },
    GitSignsDeleteLn = { foreground = col.red },
    GitSignsDelete = { foreground = col.bright_red },
    GitSignsDeleteNr = { foreground = col.red:brighten(2) },
  }
end

return M

---vim:filetype=lua
