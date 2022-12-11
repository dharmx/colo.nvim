local col = require("colo.api").theme.current()

return {
  LspDiagnosticsSignWarn = { link = "DiagnosticSignWarn" },
  LspDiagnosticsSignError = { link = "DiagnosticSignError" },
  LspDiagnosticsSignInfo = { link = "DiagnosticSignInfo" },
  LspDiagnosticsSignHint = { link = "DiagnosticSignHint" },
  LspReferenceText = { background = col.black:lighten(3), foreground = col.magenta:brighten(3) },
  LspReferenceRead = { background = col.black:lighten(3), foreground = col.blue:brighten(3) },
  LspReferenceWrite = { background = col.black:lighten(3), foreground = col.magenta:increase_red(10):decrease_blue(5) },
  LspSignatureActiveParameter = { background = col.black:lighten(3), foreground = col.cyan:brighten(3) },
}

---vim:filetype=lua
