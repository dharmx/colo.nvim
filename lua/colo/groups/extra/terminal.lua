local M = {}

function M.get(col, deco)
  return {
    col.black:lighten(4),
    col.red,
    col.green,
    col.yellow,
    col.blue,
    col.magenta,
  }
end

return M

---vim:filetype=lua
