---@module "colo.groups.base.gutter"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    FoldColumn = { background = c.black, foreground = c.cyan },
    Folded = { background = c.black, foreground = c.black:lighten(12) },
    SignColumn = { background = c.black },
  }
end

return M

-- vim:filetype=lua
