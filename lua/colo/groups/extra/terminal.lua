local M = {}

function M.get(col, deco)
  return {
    col.black:lighten(4),
    col.red,
    col.green,
    col.yellow,
    col.blue,
    col.magenta,
    col.cyan,
    col.white,
    col.bright_black:lighten(2),
    col.bright_red,
    col.bright_green,
    col.bright_yellow,
    col.bright_blue,
    col.bright_magenta,
    col.bright_cyan,
    col.bright_white,
  }
end

return M

---vim:filetype=lua
