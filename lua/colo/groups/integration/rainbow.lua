---@module "colo.groups.integration.rainbow"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    rainbowcol1 = { foreground = col.bright_magenta:brighten(10):increase_blue(20) },
    rainbowcol2 = { foreground = col.bright_blue:brighten(10) },
    rainbowcol3 = { foreground = col.blue:brighten(10) },
    rainbowcol4 = { foreground = col.bright_green:brighten(10) },
    rainbowcol5 = { foreground = col.bright_yellow:brighten(10) },
    rainbowcol6 = { foreground = col.bright_red:desaturate(8):brighten(10) },
    rainbowcol7 = { foreground = col.bright_red:brighten(10) },
  }
end

return M

---vim:filetype=lua
