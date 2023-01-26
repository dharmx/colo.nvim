---@module "colo.groups.syntax.treesitter"
---@author dharmx
---@license GPL-3.0

local M = {}

function M.prime(col)
  return {
    TreesitterContext = { background = col.black:brighten(0.5):lighten(2) },
    ["@lua.parameter.self"] = { foreground = col.bright_yellow:increase_red(2) },
    ["@lua.constant.vim"] = { link = "@constant" },
    ["@lua.constant.cmd"] = { link = "@namespace" },
    ["@lua.function.pcall"] = { link = "@macro" },
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = {},
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { foreground = col.yellow:darken(5) },
    ["@constant.macro"] = { foreground = col.red:decrease_red(8) },
    ["@constructor"] = { foreground = col.bright_blue },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { foreground = col.bright_green },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { foreground = col.bright_green },
    ["@function.macro"] = { foreground = col.red:increase_red(5) },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.operator"] = { foreground = col.cyan },
    ["@keyword.function"] = { foreground = col.bright_red },
    ["@label"] = { link = "Label" },
    ["@macro"] = { link = "Macro" },
    ["@method"] = { foreground = col.bright_magenta },
    ["@namespace"] = { foreground = col.bright_blue:desaturate(1.5) },
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { foreground = col.yellow:increase_red(6) },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { foreground = col.bright_cyan },
    ["@punctuation.delimiter"] = { link = "Delimeter" },
    ["@punctuation.bracket"] = { foreground = col.red:brighten(5) },
    ["@punctuation"] = { link = "Delimeter" },
    ["@repeat"] = { link = "Repeat" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { foreground = col.yellow:decrease_red(10) },
    ["@string.regex"] = { foreground = col.yellow:increase_red(10):decrease_blue(5) },
    ["@string.special"] = { foreground = col.bright_yellow },
    ["@structure"] = { link = "Structure" },
    ["@tag"] = { link = "Tag" },
    ["@text"] = { foreground = col.white },
    ["@text.literal"] = { foreground = col.green:decrease_green(5) },
    ["@text.reference"] = { foreground = col.blue },
    ["@text.title"] = { foreground = col.bright_red:darken(2) },
    ["@text.todo"] = { foreground = col.yellow },
    ["@text.uri"] = { foreground = col.bright_red },
    ["@type"] = { link = "Type" },
    ["@variable"] = { foreground = col.white },
    ["@type.definition"] = { link = "Typedef" },
    ["@text.underline"] = { link = "Underlined" },
    ["@debug"] = { foreground = col.blue:decrease_blue(10) },
    ["@define"] = { link = "Define" },
  }
end

return M

---vim:filetype=lua
