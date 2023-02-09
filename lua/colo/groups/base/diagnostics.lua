local M = {}

function M.prime(c)
  return {
    DiagnosticSignWarn = { foreground = c.red:lighten(3) },
    DiagnosticSignError = { foreground = c.bright_red },
    DiagnosticSignInfo = { foreground = c.blue },
    DiagnosticSignHint = { foreground = c.magenta },
    DiagnosticWarn = { foreground = c.red:lighten(3) },
    DiagnosticError = { foreground = c.red },
    DiagnosticInfo = { foreground = c.blue },
    DiagnosticHint = { foreground = c.magenta },
    DiagnosticUnderlineWarn = { foreground = c.red:lighten(3) },
    DiagnosticUnderlineError = { foreground = c.red },
    DiagnosticUnderlineInfo = { foreground = c.blue },
    DiagnosticUnderlineHint = { foreground = c.magenta },
  }
end

return M
