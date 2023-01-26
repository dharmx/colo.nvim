---@module "colo.groups.base.lsp"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    LspDiagnosticsSignWarn = { foreground = col.red:brighten(5) },
    LspDiagnosticsSignError = { foreground = col.bright_red },
    LspDiagnosticsSignInfo = { foreground = col.blue },
    LspDiagnosticsSignHint = { foreground = col.magenta },
    LspReferenceText = { background = col.black:lighten(3), foreground = col.magenta:brighten(3) },
    LspReferenceRead = { background = col.black:lighten(3), foreground = col.blue:brighten(3) },
    LspReferenceWrite = { background = col.black:lighten(3), foreground = col.magenta:increase_red(10):decrease_blue(5) },
    LspSignatureActiveParameter = { background = col.black:lighten(3), foreground = col.cyan:brighten(3) },
  }
end

return M

---vim:filetype=lua
