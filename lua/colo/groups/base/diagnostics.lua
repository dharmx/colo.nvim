---@module "colo.groups.base.diagnostics"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    DiagnosticSignWarn = { foreground = col.red:lighten(3) },
    DiagnosticSignError = { foreground = col.bright_red },
    DiagnosticSignInfo = { foreground = col.blue },
    DiagnosticSignHint = { foreground = col.magenta },
    DiagnosticWarn = { foreground = col.red:lighten(3) },
    DiagnosticError = { foreground = col.red },
    DiagnosticInfo = { foreground = col.blue },
    DiagnosticHint = { foreground = col.magenta },
    DiagnosticUnderlineWarn = { foreground = col.red:lighten(3) },
    DiagnosticUnderlineError = { foreground = col.red },
    DiagnosticUnderlineInfo = { foreground = col.blue },
    DiagnosticUnderlineHint = { foreground = col.magenta },
  }
end

return M

---vim:filetype=lua
