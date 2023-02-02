---@module "colo.groups.base.tabline"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    TabLine = { background = c.black, foreground = c.bright_black:lighten(10) },
    TabLineFill = { background = c.black, foreground = c.blue },
    TabLineSel = { background = c.blue, foreground = c.black },
  }
end

return M

-- vim:filetype=lua
