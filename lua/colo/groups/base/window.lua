---@module "colo.groups.base.window"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    VertSplit = { foreground = col.bright_black },
    WinSeparator = { link = "VertSplit" },
    Title = { foreground = col.black:brighten(4):lighten(20) },
    MsgSeparator = { foreground = col.magenta },
  }
end

return M

---vim:filetype=lua
