---@module "colo.groups.override.sakura_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    PmenuSel = { background = c.blue, foreground = c.bright_black },
    NvimTreeNormal = { background = c.black:darken(0.6), foreground = c.white },
    NvimTreeVertSplit = { background = c.black:darken(0.6), foreground = c.black:darken(0.6) },
    NvimTreeWinSeparator = { background = c.black:darken(0.6), foreground = c.black:darken(0.6) },
    NvimTreeNormalNC = { background = c.black:darken(0.6), foreground = c.white },
  }
end

return M

---vim:filetype=lua
