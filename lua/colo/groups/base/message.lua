---@module "colo.groups.base.message"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    EndOfBuffer = { foreground = c.magenta },
    ErrorMsg = { foreground = c.red },
    ModeMsg = { foreground = c.blue },
    MsgArea = { foreground = c.white:darken(4) },
    MoreMsg = { foreground = c.yellow },
    Question = { foreground = c.green },
    Directory = { foreground = c.yellow },
    WarningMsg = { foreground = c.bright_red },
  }
end

return M

-- vim:filetype=lua
