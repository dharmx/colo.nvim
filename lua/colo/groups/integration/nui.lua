---@module "colo.groups.integration.nui"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    NUIHeading = { background = col.black:darken(1.5), foreground = col.red },
    NUIText = { background = col.black:darken(1.5), foreground = col.white:darken(10) },
    NUILine = { background = col.black:darken(1.5), foreground = col.bright_black:brighten(4) },
    NUINormal = { background = col.black:darken(1.5), foreground = col.black:darken(1) },
    NUIPrompt = { background = col.black:darken(1.5), foreground = col.blue },
    NUIYes = { foreground = col.blue },
    NUINo = { foreground = col.red },
    NUICancel = { foreground = col.bright_black:lighten(5) },
  }
end

return M

---vim:filetype=lua
