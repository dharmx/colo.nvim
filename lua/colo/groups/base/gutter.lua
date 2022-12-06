local M = {}

function M.get(col, deco)
  return {
    FoldColumn = { background = col.black, foreground = col.cyan },
    Folded = { background = col.black, foreground = col.black:lighten(12) },
    SignColumn = { background = col.black },
  }
end

return M

---vim:filetype=lua
