local M = {}

function M.get(col, deco)
  return {
    TroubleNormal = { background = col.black:darken(2) },
  }
end

return M

---vim:filetype=lua
