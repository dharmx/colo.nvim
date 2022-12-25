---@module "colo.groups.override.sakura_dark"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  PmenuSel = { background = col.blue, foreground = col.bright_black },
  NvimTreeNormal = { background = col.black:darken(0.6), foreground = col.white },
  NvimTreeVertSplit = { background = col.black:darken(0.6), foreground = col.black:darken(0.6) },
  NvimTreeWinSeparator = { background = col.black:darken(0.6), foreground = col.black:darken(0.6) },
  NvimTreeNormalNC = { background = col.black:darken(0.6), foreground = col.white },
}

---vim:filetype=lua
