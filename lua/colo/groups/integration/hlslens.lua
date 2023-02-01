---@module "colo.groups.integration.hlslens"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  HlSearchLens = { background = col.black:lighten(5), foreground = col.blue:brighten(5) },
  HlSearchNear = { background = col.black:lighten(5), foreground = col.cyan:brighten(5) },
  HlSearchFloat = { background = col.black:lighten(5), foreground = col.magenta:brighten(5) },
  HlSearchLensNear = { background = col.yellow:darken(3), foreground = col.black },
}

---vim:filetype=lua
