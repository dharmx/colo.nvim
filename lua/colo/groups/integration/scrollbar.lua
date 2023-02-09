local M = {}

function M.prime(c)
  return {
    ScrollbarHint = { foreground = c.magenta },
    ScrollbarInfo = { foreground = c.blue },
    ScrollbarMisc = { foreground = c.magenta:increase_red(10):decrease_blue(5) },
    ScrollbarWarn = { foreground = c.red:lighten(3) },
    ScrollbarError = { foreground = c.red },
    ScrollbarCursor = { foreground = c.bright_cyan },
    ScrollbarGitAdd = { foreground = c.blue },
    ScrollbarSearch = { foreground = c.yellow },
    ScrollbarHandle = { foreground = c.blue },
    ScrollbarGitChange = { foreground = c.magenta },
    ScrollbarGitDelete = { foreground = c.red },
    ScrollbarHintHandle = { foreground = c.bright_magenta },
    ScrollbarInfoHandle = { foreground = c.blue },
    ScrollbarMiscHandle = { foreground = c.cyan },
    ScrollbarWarnHandle = { foreground = c.bright_red:darken(2) },
    ScrollbarErrorHandle = { foreground = c.red },
    ScrollbarGitAddHandle = { foreground = c.blue:brighten(3) },
    ScrollbarSearchHandle = { foreground = c.bright_yellow:brighten(3) },
    ScrollbarGitChangeHandle = { foreground = c.bright_magenta:brighten(2) },
    ScrollbarGitDeleteHandle = { foreground = c.bright_red:brighten(3) },
    ScrollbarCursorHandle = { background = c.bright_black:lighten(4), foreground = c.bright_cyan },
  }
end

return M
