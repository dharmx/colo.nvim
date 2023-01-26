---@module "colo.groups.integration.incline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    InclineBG = { background = col.bright_black },
    InclineFG = { foreground = col.white },
    InclineBGNC = { background = col.black:lighten(2) },
    InclineFGNC = { foreground = col.magenta },
    InclineThemeBG = { background = col.yellow },
    InclineCursorLine = { background = col.bright_black:darken(1) },
    InclineCursorLineNC = { background = col.black:brighten(1):lighten(1) },
  }
end

return M

-- vim:filetype=lua
