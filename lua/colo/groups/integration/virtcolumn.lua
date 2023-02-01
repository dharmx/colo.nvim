---@module "colo.groups.integration.virtcolumn"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  VirtColumn = { background = col.black, foreground = col.black:brighten(0.5):lighten(2) },
}

---vim:filetype=lua
