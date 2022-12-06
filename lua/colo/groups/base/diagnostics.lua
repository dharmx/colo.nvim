hl.link("DiagnosticSignWarn", "DiagnosticHint")
hl.link("DiagnosticSignError", "DiagnosticHint")
hl.link("DiagnosticSignInfo", "DiagnosticHint")
hl.link("DiagnosticSignHint", "DiagnosticHint")
hl.foreground("DiagnosticWarn", col.red:lighten(3))
hl.foreground("DiagnosticError", col.red)
hl.foreground("DiagnosticInfo", col.blue)
hl.foreground("DiagnosticHint", col.magenta)
hl.foreground("DiagnosticUnderlineWarn", col.red:lighten(3), { deco.UCL })
hl.foreground("DiagnosticUnderlineError", col.red, { deco.UCL })
hl.foreground("DiagnosticUnderlineInfo", col.blue, { deco.UCL })
hl.foreground("DiagnosticUnderlineHint", col.magenta, { deco.UCL })

---vim:filetype=lua
