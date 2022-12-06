local M = {}

function M.get(col, deco)
  return {
    Pmenu = { background = col.black:brighten(1):lighten(2), foreground = col.white:darken(20) },
    PmenuSel = { background = col.green, foreground = col.black },
    PmenuSbar = { link = "Pmenu" },
    PmenuThumb = { background = col.black:brighten(2):lighten(3) },
  }
end

return M

---vim:filetype=lua
