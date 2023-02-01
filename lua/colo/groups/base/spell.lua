---@module "colo.groups.base.spell"
---@author dharmx
---@license GPL-3.0

local col = require("colo.api").theme.current()

return {
  SpellBad = { foreground = col.red },
  SpellCap = { foreground = col.bright_yellow },
  SpellRare = { foreground = col.bright_cyan },
  SpellLocal = { foreground = col.bright_red },
}

---vim:filetype=lua
