---@module "colo.groups.base.spell"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    SpellBad = { foreground = col.red },
    SpellCap = { foreground = col.bright_yellow },
    SpellRare = { foreground = col.bright_cyan },
    SpellLocal = { foreground = col.bright_red },
  }
end

return M

---vim:filetype=lua
