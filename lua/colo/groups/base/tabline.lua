local M = {}

function M.get(col, deco)
  return {
    TabLine = { background = col.black, foreground = col.bright_black:lighten(10) },
    TabLineFill = { background = col.black, foreground = col.blue },
    TabLineSel = { background = col.blue, foreground = col.black },
  }
end

return M

---vim:filetype=lua
