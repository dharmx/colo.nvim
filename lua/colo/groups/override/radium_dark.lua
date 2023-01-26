---@module "colo.groups.override.radium_dark"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    NUIHeading = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.red },
    NUIText = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.white:darken(10) },
    NUILine = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.bright_black:brighten(4) },
    NUINormal = {
      background = col.black:brighten(1):lighten(2):darken(1),
      foreground = col.black:brighten(1):lighten(2):darken(1),
    },
    NUIPrompt = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.blue },
    NUIYes = { foreground = col.blue },
    NUINo = { foreground = col.red },
    NUICancel = { foreground = col.bright_black:lighten(5) },
    NormalFloat = { background = col.black:brighten(1):lighten(2):darken(1), foreground = col.white:darken(10) },
    FloatBorder = {
      background = col.black:brighten(1):lighten(2):darken(1),
      foreground = col.black:brighten(1):lighten(2):darken(1),
    },
    Pmenu = { background = col.black:brighten(1):lighten(2), foreground = col.white:darken(20) },
    PmenuThumb = { background = col.black:brighten(2):lighten(3) },
  }
end

return M

---vim:filetype=lua
