---@module "colo.groups.extra.aggregate"
---@author dharmx
---@license GPL-3.0

local M = {}

M.bold = {
  "@lua.parameter.self",
  "@lua.constant.vim",
  "@lua.constant.cmd",
  "@lua.function.pcall",
  "@function.builtin",
  "@boolean",
  "@text.title",
  "@constant.builtin",
  "@include",
  "@constant",
  "ModeMsg",
  "TelescopePromptCounter",
  "TelescopeMatching",
  "LspReferenceText",
  "LspReferenceRead",
  "LspReferenceWrite",
  "LspSignatureActiveParameter",
  "HlSearchNear",
  "HlSearchLensNear",
  "CursorLineNr",
  "Include",
  "Title",
  "NvimTreeCursorLineNr",
  "NvimTreeRootFolder",
  "SpecialKey",
  "MatchParen",
  "TabLine",
  "TabLineSel",
  "Boolean",
  "WhichKeyGroup",
  "FidgetTitle",
  "Bold",
  "AlphaKeyPrefix",
  "AlphaFooting",
}

M.italic = {
  "Comment",
  "Conditional",
  "Function",
  "Identifier",
  "Repeat",
  "String",
  "Todo",
  "Folded",
  "SpellBad",
  "SpellCap",
  "SpellLocal",
  "SpellRare",
  "Italic",
  "@comment",
  "@conditional",
  "@function",
  "@method",
  "@function.builtin",
  "@field",
  "@keyword",
  "@keyword.function",
  "@keyword.return",
  "@keyword.operator",
  "@string",
  "@repeat",
  "@string.regex",
  "@string.escape",
  "@namespace",
  "@property",
  "@character",
}

M.underline = {
  "Underlined",
  "@text.underline",
  "@text.uri",
}

M.undercurl = {
  "@spell",
  "SpellBad",
  "SpellLocal",
  "DiagnosticUnderlineWarn",
  "DiagnosticUnderlineError",
  "DiagnosticUnderlineInfo",
  "DiagnosticUnderlineHint",
}

M.transparent = {
  "NormalFloat",
  "Normal",
  "Folded",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "NvimTreeCursorLine",
  "TelescopeNormal",
  "TelescopePrompt",
  "TelescopeResults",
  "TelescopePromptNormal",
  "TelescopePromptPrefix",
  "CursorLine",
  "Pmenu",
}

return M
