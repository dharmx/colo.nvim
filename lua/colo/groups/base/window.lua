local M = {}

function M.get(col, deco)
  return {
    VertSplit = { foreground = col.bright_black },
    WinSeparator = { link = "VertSplit" },
    Title = { foreground = col.black:brighten(4):lighten(20) },
    MsgSeparator = { foreground = col.magenta },
  }
end

return M

---vim:filetype=lua
