---@module "colo.groups.integration.lightbulb"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    LightBulbFloatWin = { foreground = col.bright_yellow },
    LightBulbVirtualText = { foreground = col.yellow },
    LightBulbSign = { foreground = col.yellow },
  }
end

return M

---vim:filetype=lua
