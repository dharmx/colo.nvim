---@module "colo.groups.integration.cmp"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    CmpItemKindClass = { link = "Type" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindKeyword = { link = "Keyword" },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindStruct = { link = "Structure" },
    CmpItemKindTypeParameter = { link = "@parameter" },
    CmpItemKindUnit = { link = "Number" },
    CmpItemKindValue = { link = "String" },
    CmpItemKindVariable = { link = "Identifier" },
    CmpItemKindColor = { foreground = col.blue },
    CmpItemAbbr = { foreground = col.white:darken(10) },
    CmpItemMenu = { foreground = col.blue },
    CmpItemKindText = { foreground = col.bright_blue },
    CmpItemKindReference = { foreground = col.bright_red },
    CmpItemKindMethod = { foreground = col.bright_red:decrease_red(12) },
    CmpItemKindInterface = { foreground = col.magenta },
    CmpItemKindEnum = { foreground = col.bright_cyan },
    CmpItemKindEnumMember = { foreground = col.magenta:decrease_blue(12) },
    CmpItemKindEvent = { foreground = col.blue:increase_blue(8) },
    CmpItemKindField = { foreground = col.yellow:saturate(3) },
    CmpItemKindFile = { foreground = col.bright_yellow },
    CmpItemKindFolder = { foreground = col.bright_yellow },
    CmpItemKindModule = { foreground = col.bright_blue },
    CmpItemKindSnippet = { foreground = col.yellow },
    CmpItemAbbrDeprecated = { foreground = col.black:lighten(10):brighten(10) },
    CmpItemAbbrMatch = { foreground = col.green },
    CmpItemAbbrMatchFuzzy = { foreground = col.bright_yellow },
    CmpItemKind = { foreground = col.black:lighten(10):brighten(10) },
  }
end

return M

---vim:filetype=lua
