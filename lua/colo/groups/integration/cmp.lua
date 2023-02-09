local M = {}

function M.prime(c)
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
    CmpItemKindColor = { foreground = c.blue },
    CmpItemAbbr = { foreground = c.white:darken(10) },
    CmpItemMenu = { foreground = c.blue },
    CmpItemKindText = { foreground = c.bright_blue },
    CmpItemKindReference = { foreground = c.bright_red },
    CmpItemKindMethod = { foreground = c.bright_red:decrease_red(12) },
    CmpItemKindInterface = { foreground = c.magenta },
    CmpItemKindEnum = { foreground = c.bright_cyan },
    CmpItemKindEnumMember = { foreground = c.magenta:decrease_blue(12) },
    CmpItemKindEvent = { foreground = c.blue:increase_blue(8) },
    CmpItemKindField = { foreground = c.yellow:saturate(3) },
    CmpItemKindFile = { foreground = c.bright_yellow },
    CmpItemKindFolder = { foreground = c.bright_yellow },
    CmpItemKindModule = { foreground = c.bright_blue },
    CmpItemKindSnippet = { foreground = c.yellow },
    CmpItemAbbrDeprecated = { foreground = c.black:lighten(10):brighten(10) },
    CmpItemAbbrMatch = { foreground = c.green },
    CmpItemAbbrMatchFuzzy = { foreground = c.bright_yellow },
    CmpItemKind = { foreground = c.black:lighten(10):brighten(10) },
  }
end

return M
