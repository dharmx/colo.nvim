---@module "colo.groups.integration.jaq"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  JaqWin = { background = col.black:lighten(3) },
  JaqBorder = { background = col.black:lighten(3) },
}

---vim:filetype=lua
