---@module "colo.groups.integration.rainbow"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    rainbowcol1 = { foreground = c.bright_magenta:brighten(10):increase_blue(20) },
    rainbowcol2 = { foreground = c.bright_blue:brighten(10) },
    rainbowcol3 = { foreground = c.blue:brighten(10) },
    rainbowcol4 = { foreground = c.bright_green:brighten(10) },
    rainbowcol5 = { foreground = c.bright_yellow:brighten(10) },
    rainbowcol6 = { foreground = c.bright_red:desaturate(8):brighten(10) },
    rainbowcol7 = { foreground = c.bright_red:brighten(10) },
  }
end

return M

-- vim:filetype=lua
