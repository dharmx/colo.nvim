local M = {}

function M.prime(c)
  return {
    NUIHeading = { background = c.black:brighten(1):lighten(2):darken(1), foreground = c.red },
    NUIText = { background = c.black:brighten(1):lighten(2):darken(1), foreground = c.white:darken(10) },
    NUILine = { background = c.black:brighten(1):lighten(2):darken(1), foreground = c.bright_black:brighten(4) },
    NUINormal = {
      background = c.black:brighten(1):lighten(2):darken(1),
      foreground = c.black:brighten(1):lighten(2):darken(1),
    },
    NUIPrompt = { background = c.black:brighten(1):lighten(2):darken(1), foreground = c.blue },
    NUIYes = { foreground = c.blue },
    NUINo = { foreground = c.red },
    NUICancel = { foreground = c.bright_black:lighten(5) },
    NormalFloat = { background = c.black:brighten(1):lighten(2):darken(1), foreground = c.white:darken(10) },
    FloatBorder = {
      background = c.black:brighten(1):lighten(2):darken(1),
      foreground = c.black:brighten(1):lighten(2):darken(1),
    },
    Pmenu = { background = c.black:brighten(1):lighten(2), foreground = c.white:darken(20) },
    PmenuThumb = { background = c.black:brighten(2):lighten(3) },
    PmenuSel = { background = c.black:brighten(1):lighten(4), foreground = c.white:darken(15) },
  }
end

return M
