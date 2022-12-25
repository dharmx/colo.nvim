---@module "colo.groups.integration.figlet"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  FidgetTitle = { foreground = col.bright_green },
  FidgetTask = { foreground = col.black:lighten(5) },
}

---vim:filetype=lua
