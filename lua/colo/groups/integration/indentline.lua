local M = {}

function M.get(col, deco)
  return {
    IndentBlanklineSpaceChar = {},
    IndentBlanklineSpaceCharBlankline = {},
    IndentBlanklineChar = { foreground = col.bright_black:brighten(4) },
    IndentBlanklineContextChar = { foreground = col.blue },
    IndentBlanklineContextStart = { background = col.black:lighten(1.5):brighten(1) },
  }
end

return M

---vim:filetype=lua
