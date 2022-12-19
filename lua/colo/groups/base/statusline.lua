---@module "colo.groups.base.statusline"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  StatusLine = { background = col.black, foreground = col.blue },
  StatusLineNC = { foreground = col.blue },
}

---vim:filetype=lua
