local M = {}

function M.prime(c)
  return {
    LspDiagnosticsSignWarn = { foreground = c.red:brighten(5) },
    LspDiagnosticsSignError = { foreground = c.bright_red },
    LspDiagnosticsSignInfo = { foreground = c.blue },
    LspDiagnosticsSignHint = { foreground = c.magenta },
    LspReferenceText = { background = c.black:lighten(3), foreground = c.magenta:brighten(3) },
    LspReferenceRead = { background = c.black:lighten(3), foreground = c.blue:brighten(3) },
    LspReferenceWrite = { background = c.black:lighten(3), foreground = c.magenta:increase_red(10):decrease_blue(5) },
    LspSignatureActiveParameter = { background = c.black:lighten(3), foreground = c.cyan:brighten(3) },
  }
end

return M
