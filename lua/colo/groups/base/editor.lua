local M = {}

function M.prime(c)
  return {
    Normal = { background = c.black, foreground = c.white },
    NormalFloat = { background = c.black:darken(1.5), foreground = c.white:darken(10) },
    FloatBorder = { background = c.black:darken(1.5), foreground = c.black:brighten(1):lighten(2):darken(1) },
    CursorColumn = { link = "CursorLine" },
    Cursor = { background = c.green:lighten(3), foreground = c.black },
    ColorColumn = { background = c.black:lighten(0.5), foreground = c.black:brighten(0.5):lighten(2) },
    Visual = { background = c.black:brighten(1):lighten(3) },
    CursorLine = { background = c.black:brighten(1):lighten(2):desaturate(4) },
    CursorLineNr = { foreground = c.yellow },
    Error = { foreground = c.red:darken(3) },
    LineNr = { foreground = c.black:lighten(15) },
  }
end

return M
