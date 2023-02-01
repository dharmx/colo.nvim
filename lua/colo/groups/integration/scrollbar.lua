---@module "colo.groups.integration.scrollbar"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    ScrollbarHint = { foreground = col.magenta },
    ScrollbarInfo = { foreground = col.blue },
    ScrollbarMisc = { foreground = col.magenta:increase_red(10):decrease_blue(5) },
    ScrollbarWarn = { foreground = col.red:lighten(3) },
    ScrollbarError = { foreground = col.red },
    ScrollbarCursor = { foreground = col.bright_cyan },
    ScrollbarGitAdd = { foreground = col.blue },
    ScrollbarSearch = { foreground = col.yellow },
    ScrollbarHandle = { foreground = col.blue },
    ScrollbarGitChange = { foreground = col.magenta },
    ScrollbarGitDelete = { foreground = col.red },
    ScrollbarHintHandle = { foreground = col.bright_magenta },
    ScrollbarInfoHandle = { foreground = col.blue },
    ScrollbarMiscHandle = { foreground = col.cyan },
    ScrollbarWarnHandle = { foreground = col.bright_red:darken(2) },
    ScrollbarErrorHandle = { foreground = col.red },
    ScrollbarGitAddHandle = { foreground = col.blue:brighten(3) },
    ScrollbarSearchHandle = { foreground = col.bright_yellow:brighten(3) },
    ScrollbarGitChangeHandle = { foreground = col.bright_magenta:brighten(2) },
    ScrollbarGitDeleteHandle = { foreground = col.bright_red:brighten(3) },
    ScrollbarCursorHandle = { background = col.bright_black:lighten(4), foreground = col.bright_cyan },
  }
end

return M

---vim:filetype=lua
