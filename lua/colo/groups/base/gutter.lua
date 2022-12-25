---@module "colo.groups.base.gutter"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  FoldColumn = { background = col.black, foreground = col.cyan },
  Folded = { background = col.black, foreground = col.black:lighten(12) },
  SignColumn = { background = col.black },
}

---vim:filetype=lua
