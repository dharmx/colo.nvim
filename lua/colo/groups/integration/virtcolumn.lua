local M = {}

function M.prime(c)
  return {
    VirtColumn = { background = c.black, foreground = c.black:brighten(0.5):lighten(2) },
  }
end

return M
