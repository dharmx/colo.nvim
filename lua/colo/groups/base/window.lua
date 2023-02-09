local M = {}

function M.prime(c)
  return {
    VertSplit = { foreground = c.bright_black },
    WinSeparator = { link = "VertSplit" },
    Title = { foreground = c.black:brighten(4):lighten(20) },
    MsgSeparator = { foreground = c.magenta },
  }
end

return M
