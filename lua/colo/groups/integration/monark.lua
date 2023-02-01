---@module "colo.groups.integration.monark"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  MonarkNormal = { foreground = col.green },
  MonarkVisual = { foreground = col.yellow },
  MonarkVisualLine = { foreground = col.red },
  MonarkVisualBlock = { foreground = col.bright_yellow },
  MonarkSelect = { foreground = col.bright_cyan },
  MonarkInsert = { foreground = col.blue },
  MonarkReplace = { foreground = col.magenta },
  MonarkTerminal = { foreground = col.bright_cyan },
  MonarkCommand = { foreground = col.bright_blue },
  monarkCommand = { link = "MonarkCommand" },
  monarkInsert = { link = "MonarkInsert" },
  monarkNormal = { link = "MonarkNormal" },
  monarkReplace = { link = "MonarkReplace" },
  monarkVisual = { link = "MonarkVisual" },
}

---vim:filetype=lua
