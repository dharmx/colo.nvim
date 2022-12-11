local col = require("colo.api").theme.current()

return {
  CursorColumn = { link = "CursorLine" },
  Normal = { background = col.black, foreground = col.white },
  NormalFloat = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.white:darken(10) },
  FloatBorder = {
    background = col.black:brighten(1):lighten(2):darken(1),
    foreground = col.black:brighten(1):lighten(2):darken(1),
  },
  Cursor = { background = col.green:lighten(3), foreground = col.black },
  ColorColumn = { background = col.black, foreground = col.black:brighten(0.5):lighten(2) },
  Visual = { background = col.black:brighten(1):lighten(3) },
  CursorLine = { background = col.black:brighten(1):lighten(2):desaturate(4) },
  CursorLineNr = { foreground = col.yellow },
  Error = { foreground = col.red:darken(3) },
  LineNr = { foreground = col.black:lighten(15) },
}

---vim:filetype=lua
