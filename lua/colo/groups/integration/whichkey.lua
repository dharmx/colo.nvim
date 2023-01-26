---@module "colo.groups.integration.whichkey"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    WhichKeyGroup = { foreground = col.red },
    WhichKeyDesc = { foreground = col.yellow },
    WhichKeySeparator = { foreground = col.blue },
    WhichKeyValue = { foreground = col.white:darken(25) },
    WhichKey = { foreground = col.magenta },
    WhichKeyFloat = { background = col.black:darken(1) },
    WhichKeyBorder = { background = col.black:darken(1) },
  }
end

return M

---vim:filetype=lua
