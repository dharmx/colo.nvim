local M = {}

function M.get(col, deco)
  return {
    DiffAdd = { foreground = col.green, deco.R },
    DiffChange = { foreground = col.magenta, deco.R },
    DiffDelete = { foreground = col.red, deco.R },
    DiffText = { foreground = col.blue, deco.R },
  }
end

return M

---vim:filetype=lua
