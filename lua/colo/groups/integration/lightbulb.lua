---@module "colo.groups.integration.lightbulb"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    LightBulbFloatWin = { foreground = c.bright_yellow },
    LightBulbVirtualText = { foreground = c.yellow },
    LightBulbSign = { foreground = c.yellow },
  }
end

return M

-- vim:filetype=lua
