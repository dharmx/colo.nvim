---@module "colo.groups.integration.indentline"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  IndentBlanklineSpaceChar = {},
  IndentBlanklineSpaceCharBlankline = {},
  IndentBlanklineChar = { foreground = col.bright_black:brighten(4) },
  IndentBlanklineContextChar = { foreground = col.blue },
  IndentBlanklineContextStart = { background = col.black:lighten(1.5):brighten(1) },
}

---vim:filetype=lua
