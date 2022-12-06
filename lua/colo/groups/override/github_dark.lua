local M = {}

function M.get(col, deco)
  return {
    NvimTreeCursorLineNr = { foreground = col.blue },
  }
end

return M
