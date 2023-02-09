local M = {}

function M.prime(c)
  return {
    WhichKeyGroup = { foreground = c.red },
    WhichKeyDesc = { foreground = c.yellow },
    WhichKeySeparator = { foreground = c.blue },
    WhichKeyValue = { foreground = c.white:darken(25) },
    WhichKey = { foreground = c.magenta },
    WhichKeyFloat = { background = c.black:darken(1) },
    WhichKeyBorder = { background = c.black:darken(1) },
  }
end

return M
