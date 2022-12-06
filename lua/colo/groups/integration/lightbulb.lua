local M = {}

function M.get(col, deco)
  return {
    LightBulbFloatWin = { foreground = col.bright_yellow },
    LightBulbVirtualText = { foreground = col.yellow },
    LightBulbSign = { foreground = col.yellow },
  }
end

return M

---vim:filetype=lua
