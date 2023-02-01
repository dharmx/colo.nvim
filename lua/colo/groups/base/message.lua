---@module "colo.groups.base.message"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  EndOfBuffer = { foreground = col.magenta },
  ErrorMsg = { foreground = col.red },
  ModeMsg = { foreground = col.blue },
  MsgArea = { foreground = col.white:darken(4) },
  MoreMsg = { foreground = col.yellow },
  Question = { foreground = col.green },
  Directory = { foreground = col.yellow },
  WarningMsg = { foreground = col.bright_red },
}

---vim:filetype=lua
