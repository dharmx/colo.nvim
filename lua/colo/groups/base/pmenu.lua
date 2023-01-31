---@module "colo.groups.base.pmenu"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    Pmenu = { background = col.black:darken(1.4), foreground = col.white:darken(20) },
    PmenuSel = { background = col.green, foreground = col.bright_black },
    PmenuSbar = { link = "Pmenu" },
    PmenuThumb = { background = col.black:lighten(1) },
  }
end

return M

---vim:filetype=lua
