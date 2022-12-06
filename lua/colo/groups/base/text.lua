local M = {}

function M.get(col, deco)
  return {
    Bold = { deco.B },
    Italic = { deco.I },
    Underlined = { deco.ULN },
  }
end

return M

---vim:filetype=lua
