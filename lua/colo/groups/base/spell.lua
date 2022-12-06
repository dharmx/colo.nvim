local M = {}

function M.get(col, deco)
  return {
    SpellBad = { foreground = col.red },
    SpellCap = { foreground = col.bright_yellow },
    SpellRare = { foreground = col.bright_cyan },
    SpellLocal = { foreground = col.bright_red },
  }
end

return M

---vim:filetype=lua
