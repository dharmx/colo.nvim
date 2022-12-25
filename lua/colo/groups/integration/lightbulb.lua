---@module "colo.groups.integration.lightbulb"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  LightBulbFloatWin = { foreground = col.bright_yellow },
  LightBulbVirtualText = { foreground = col.yellow },
  LightBulbSign = { foreground = col.yellow },
}

---vim:filetype=lua
