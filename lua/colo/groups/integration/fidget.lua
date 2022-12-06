local M = {}

function M.get(col, deco)
  return {
    FidgetTitle = { foreground = col.bright_green },
    FidgetTask = { foreground = col.black:lighten(5) },
  }
end

return M

---vim:filetype=lua
