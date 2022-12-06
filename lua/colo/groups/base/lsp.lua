hl.link("LspDiagnosticsSignWarn", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignError", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignInfo", "DiagnosticSignHint")
hl.link("LspDiagnosticsSignHint", "DiagnosticSignHint")
hl.short_set("LspReferenceText", col.black:lighten(3), col.magenta:brighten(3), { deco.B })
hl.short_set("LspReferenceRead", col.black:lighten(3), col.blue:brighten(3), { deco.B })
hl.short_set("LspReferenceWrite", col.black:lighten(3), col.magenta:increase_red(10):decrease_blue(5), { deco.B })
hl.short_set("LspSignatureActiveParameter", col.black:lighten(3), col.cyan:brighten(3), { deco.B })

---vim:filetype=lua
