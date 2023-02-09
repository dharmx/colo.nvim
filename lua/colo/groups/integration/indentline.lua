local M = {}

function M.prime(c)
  return {
    IndentBlanklineSpaceChar = {},
    IndentBlanklineSpaceCharBlankline = {},
    IndentBlanklineChar = { foreground = c.bright_black:brighten(4) },
    IndentBlanklineContextChar = { foreground = c.blue },
    IndentBlanklineContextStart = { background = c.black:lighten(1.5):brighten(1) },
  }
end

return M
