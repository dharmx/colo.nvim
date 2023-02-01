---@module "colo.groups.override.one_dark"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  PmenuSel = { background = col.blue, foreground = col.bright_black },
}

---vim:filetype=lua
