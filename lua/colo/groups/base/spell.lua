---@module "colo.groups.base.spell"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(c)
  return {
    SpellBad = { foreground = c.red },
    SpellCap = { foreground = c.bright_yellow },
    SpellRare = { foreground = c.bright_cyan },
    SpellLocal = { foreground = c.bright_red },
  }
end

return M

---vim:filetype=lua
