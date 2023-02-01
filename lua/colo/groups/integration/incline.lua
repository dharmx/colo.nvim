---@module "colo.groups.integration.incline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    InclineBG = { background = c.bright_black },
    InclineFG = { foreground = c.white },
    InclineBGNC = { background = c.black:lighten(2) },
    InclineFGNC = { foreground = c.magenta },
    InclineThemeBG = { background = c.yellow },
    InclineCursorLine = { background = c.bright_black:darken(1) },
    InclineCursorLineNC = { background = c.black:brighten(1):lighten(1) },
  }
end

return M

-- vim:filetype=lua
