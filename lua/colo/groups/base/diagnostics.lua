local col = require("colo.api").theme.current()

return {
  DiagnosticSignWarn = { link = "DiagnosticWarn" },
  DiagnosticSignError = { link = "DiagnosticError" },
  DiagnosticSignInfo = { link = "DiagnosticInfo" },
  DiagnosticSignHint = { link = "DiagnosticHint" },
  DiagnosticWarn = { foreground = col.red:lighten(3) },
  DiagnosticError = { foreground = col.red },
  DiagnosticInfo = { foreground = col.blue },
  DiagnosticHint = { foreground = col.magenta },
  DiagnosticUnderlineWarn = { foreground = col.red:lighten(3) },
  DiagnosticUnderlineError = { foreground = col.red },
  DiagnosticUnderlineInfo = { foreground = col.blue },
  DiagnosticUnderlineHint = { foreground = col.magenta },
}

---vim:filetype=lua
