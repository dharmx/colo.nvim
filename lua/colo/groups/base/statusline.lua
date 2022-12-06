local M = {}

function M.get(col, deco)
  return {
    StatusLine = { background = col.black, foreground = col.blue },
    StatusLineNC = { foreground = col.blue },
  }
end

return M

---vim:filetype=lua
