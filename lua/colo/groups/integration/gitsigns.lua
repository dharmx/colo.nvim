local M = {}

function M.get(col, deco)
  return {
    GitSignsChange = { foreground = col.magenta:darken(5):decrease_blue(5) },
    GitSignsChangeNr = { foreground = col.bright_magenta },
    GitSignsChangeLn = { foreground = col.magenta:brighten(3) },
    GitSignsAdd = { foreground = col.blue },
    GitSignsAddNr = { foreground = col.bright_blue },
    GitSignsAddLn = { foreground = col.blue },
    GitSignsDeleteLn = { foreground = col.red },
    GitSignsDelete = { foreground = col.bright_red },
    GitSignsDeleteNr = { foreground = col.red:brighten(2) },
  }
end

return M

---vim:filetype=lua
