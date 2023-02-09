local M = {}

function M.prime(c)
  return {
    StatusLine = { background = c.black, foreground = c.blue },
    StatusLineNC = { foreground = c.blue },
  }
end

return M
