local M = {}

function M.prime(c)
  return {
    NUIHeading = { background = c.black:darken(1.5), foreground = c.red },
    NUIText = { background = c.black:darken(1.5), foreground = c.white:darken(10) },
    NUILine = { background = c.black:darken(1.5), foreground = c.bright_black:brighten(4) },
    NUINormal = { background = c.black:darken(1.5), foreground = c.black:darken(1) },
    NUIPrompt = { background = c.black:darken(1.5), foreground = c.blue },
    NUIYes = { foreground = c.blue },
    NUINo = { foreground = c.red },
    NUICancel = { foreground = c.bright_black:lighten(5) },
  }
end

return M
