local M = {}

function M.prime(c)
  return {
    FidgetTitle = { foreground = c.bright_green },
    FidgetTask = { foreground = c.black:lighten(5) },
  }
end

return M
