local M = {}

function M.prime(c)
  return {
    c.black:lighten(4),
    c.red,
    c.green,
    c.yellow,
    c.blue,
    c.magenta,
    c.cyan,
    c.white,
    c.bright_black:lighten(2),
    c.bright_red,
    c.bright_green,
    c.bright_yellow,
    c.bright_blue,
    c.bright_magenta,
    c.bright_cyan,
    c.bright_white,
  }
end

return M
