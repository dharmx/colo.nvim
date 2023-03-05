local M = {}

function M.prime(c)
  return {
    HarpoonTitle = { foreground = c.bright_black, background = c.red },
    HarpoonCursor = { background = c.black, foreground = c.blue },
    HarpoonBorder = { link = "FloatBorder" },
    HarpoonWindow = { link = "NormalFloat" },
    HarpoonCurrentFile = { link = "CursorLineNr" },
  }
end

return M
